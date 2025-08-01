class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, presence: true, length: { minimum: 6 }
  validates :movie, presence: true
  validates :list, presence: true

  validates :movie_id, uniqueness: { scope: :list_id, message: "This movie has already been bookmarked for this list." }
end
