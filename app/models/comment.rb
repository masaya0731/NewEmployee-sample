class Comment < ApplicationRecord
  belongs_to :customer
  belongs_to :post
  has_many :comment_notifications, dependent: :destroy
end
