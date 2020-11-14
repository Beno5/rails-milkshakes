class Ingredient < ApplicationRecord
  has_many :doses
  has_many :milkshakes, through: :doses
  validates :name, presence: true
end