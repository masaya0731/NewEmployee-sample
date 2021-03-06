# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_211_230_134_013) do
  create_table 'active_admin_comments', force: :cascade do |t|
    t.string 'namespace'
    t.text 'body'
    t.string 'resource_type'
    t.integer 'resource_id'
    t.string 'author_type'
    t.integer 'author_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index %w[author_type author_id], name: 'index_active_admin_comments_on_author_type_and_author_id'
    t.index ['namespace'], name: 'index_active_admin_comments_on_namespace'
    t.index %w[resource_type resource_id], name: 'index_active_admin_comments_on_resource_type_and_resource_id'
  end

  create_table 'admin_users', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['email'], name: 'index_admin_users_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_admin_users_on_reset_password_token', unique: true
  end

  create_table 'admins', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['email'], name: 'index_admins_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_admins_on_reset_password_token', unique: true
  end

  create_table 'answer_notifications', force: :cascade do |t|
    t.integer 'visiter_id', null: false
    t.integer 'visited_id', null: false
    t.integer 'question_id'
    t.integer 'answer_id'
    t.string 'action', default: '', null: false
    t.boolean 'checked', default: false, null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'answers', force: :cascade do |t|
    t.integer 'customer_id', null: false
    t.integer 'question_id', null: false
    t.text 'body', null: false
    t.string 'answer_image'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'authors', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'comment_notifications', force: :cascade do |t|
    t.integer 'visiter_id', null: false
    t.integer 'visited_id', null: false
    t.integer 'post_id'
    t.integer 'comment_id'
    t.string 'action', default: '', null: false
    t.boolean 'checked', default: false, null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'comments', force: :cascade do |t|
    t.integer 'customer_id', null: false
    t.integer 'post_id', null: false
    t.text 'body', null: false
    t.string 'comment_image'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'customers', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.string 'last_name', null: false
    t.string 'first_name', null: false
    t.string 'nick_name', null: false
    t.string 'introduction', null: false
    t.string 'profile_image', null: false
    t.boolean 'is_deleted', default: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['email'], name: 'index_customers_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_customers_on_reset_password_token', unique: true
  end

  create_table 'genres', force: :cascade do |t|
    t.string 'name', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'posts', force: :cascade do |t|
    t.integer 'customer_id', null: false
    t.integer 'genre_id', null: false
    t.string 'title', null: false
    t.text 'body', null: false
    t.string 'post_image'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'questions', force: :cascade do |t|
    t.integer 'customer_id', null: false
    t.integer 'genre_id', null: false
    t.string 'title', null: false
    t.text 'body', null: false
    t.string 'question_image'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end
end
