class List < ApplicationRecord
  as_many :bookmarks, dependent: :destroy

  validates :name, uniqueness: true
end
