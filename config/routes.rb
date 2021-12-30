Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # 顧客用
  # URL /customers/sign_in ...
  devise_for :customers,skip: [:passwords,], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  root to: "public/homes#top"
  get "/about", to: "public/homes#about"

  namespace :public do
    resources :customers
    resources :posts
    resources :comments
    resources :questions
    resources :answers
    resources :genres
    resources :commnet_notifications
    resources :answer_notifications
  end

  # 管理者用
  # URL /admin/sign_in ...
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }

  namespace :admin do
    root to: "homes#top"
    resources :customers
    resources :posts
    resources :questions
    resources :genres
  end

end
