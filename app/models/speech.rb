class Speech < ApplicationRecord
  belongs_to :user
  has_many :reviews
  validates :length_max, presence: true
  validates :description, presence: true
end
