class Post < ApplicationRecord

  belongs_to :customer
  belongs_to :genre
  has_many :comments, dependent: :destroy
end
