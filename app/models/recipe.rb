class Recipe < ApplicationRecord
  validates :title, presence: true
  validates :method, presence: true
  validates :ingredients, presence: true
end
