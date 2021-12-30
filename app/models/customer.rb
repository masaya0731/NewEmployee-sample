class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :questions, dependent: :destroy
  has_many :answer, dependent: :destroy
  # コメント通知の紐付け
  has_many :active_comment_notifications, class_name: 'CommentNotification', foreign_key: 'visitor_id',
                                          dependent: :destroy
  has_many :passive_comment_notifications, class_name: 'CommentNotification', foreign_key: 'visited_id',
                                           dependent: :destroy
  # 回答通知の紐付け
  has_many :active_answer_notifications, class_name: 'AnserNotification', foreign_key: 'visitor_id', dependent: :destroy
  has_many :passive_answer_notifications, class_name: 'AnserNotification', foreign_key: 'visited_id',
                                          dependent: :destroy
end
