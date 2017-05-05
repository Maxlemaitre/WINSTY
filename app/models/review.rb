class Review < ApplicationRecord
  belongs_to :speech
  belongs_to :user
  validates :content, presence: true

  def filter
    review.speech.reviews.count >= 3 ? review.speech.reviewed = true : review.speech.reviewed = false
  end
end
