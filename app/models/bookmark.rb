class Bookmark < ApplicationRecord
  belongs_to :movie
  #b.movie
  belongs_to :list
  #b.list
  validates :comment, presence: true
  validates :comment, length: {minimum: 6}
  validates :movie, uniqueness: { scope: :list }
end
