# frozen_string_literal: true

class Dose < ApplicationRecord
  belongs_to :milkshake
  belongs_to :ingredient
  validates :milkshake, uniqueness: { scope: :ingredient }
  validates :description, presence: true
end
