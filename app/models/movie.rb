class Movie < ApplicationRecord
  belongs_to :user
  validates :price, :genre, :synopsis, :poster_url, :director, :title, :year, presence: true
end
