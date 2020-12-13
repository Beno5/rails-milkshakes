# frozen_string_literal: true

class Milkshake < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :photo, presence: true
end
