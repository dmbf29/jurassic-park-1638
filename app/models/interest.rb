class Interest < ApplicationRecord
  belongs_to :dinosaur
  belongs_to :hobby
  validates :hobby, uniqueness: { scope: :dinosaur }
end
