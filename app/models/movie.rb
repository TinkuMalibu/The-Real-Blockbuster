class Movie < ApplicationRecord
  belongs_to :user
  validates :movie, :price, :genre, :synopsis, :director, :title, :year, presence: true
end
