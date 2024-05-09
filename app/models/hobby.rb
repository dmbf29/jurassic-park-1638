class Hobby < ApplicationRecord
  has_many :interests
  # has_many :dinosaurs, through: :interests
  validates :name, presence: true, uniqueness: true
end
