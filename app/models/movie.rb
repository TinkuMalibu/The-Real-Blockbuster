class Movie < ApplicationRecord
  belongs_to :user
  has_many :rentals
  validates :price, :genre, :synopsis, :poster_url, :director, :title, :year, presence: true
end
