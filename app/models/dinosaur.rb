class Dinosaur < ApplicationRecord
  belongs_to :park
  has_many :interests, dependent: :destroy
  has_many :hobbies, through: :interests
  validates :name, presence: true
  has_one_attached :photo
end
