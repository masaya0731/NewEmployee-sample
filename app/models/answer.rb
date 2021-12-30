class Answer < ApplicationRecord
  belongs_to :customer
  belongs_to :question
  has_many :answer_notifications, dependent: :destroy
end
