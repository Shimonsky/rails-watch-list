class Movie < ApplicationRecord
  as_many :bookmarks

  validates :title, uniqueness: true
end
