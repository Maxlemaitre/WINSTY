class Review < ApplicationRecord
  belongs_to :speech
  belongs_to :user
  validates :content, presence: true
end
