class Speech < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  validates :length_max, presence: true
  validates :description, presence: true
end
