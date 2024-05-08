class Park < ApplicationRecord
  has_many :dinosaurs, dependent: :destroy  # park.dinosaurs
  validates :name, presence: true, uniqueness: true
end
