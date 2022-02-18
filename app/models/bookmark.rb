class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie
  validates :comment, presence: true, length: { minimum: 6 }
  validates :movie, uniqueness: { scope: :list }
end
