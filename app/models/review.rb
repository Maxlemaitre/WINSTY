class Review < ApplicationRecord
  belongs_to :speech
  belongs_to :user
end
