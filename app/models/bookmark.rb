class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie
  validates_associated :list, :movie, uniqueness: true
  validates :comment, numericality: { greater_than: 5 }

end
