class Movie < ApplicationRecord
  belongs_to :user
  has_many :rentals, dependent: :destroy
  validates :price, :genre, :synopsis, :poster_url, :director, :title, :year, presence: true

  has_one_attached :poster_url
end
