class User < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :speeches, dependent: :destroy
  has_many :reviews, dependent: :destroy
  validates :first_name, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
