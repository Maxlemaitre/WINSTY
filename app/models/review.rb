class Review < ApplicationRecord
  belongs_to :speech
  belongs_to :user
  validates :content, presence: true

  # def filter
  # ajaxifier ce truc pour faire en sorte qu'à chaque fois qu'on rajoute un commentaire, d'envoyer une requète que quand il y a 3
  # reviews sur le même speech
  #   speech.reviews.count >= 3 ? self.speech.reviewed = true : self.speech.reviewed = false
  # end
end
