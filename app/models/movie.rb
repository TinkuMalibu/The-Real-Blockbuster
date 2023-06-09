class Movie < ApplicationRecord

  GENRES = %w(Action Animation Comedy Documentary Drama Fantasy Biography Horror Musical Sci-Fi Short Silent Sport Thriller Western Avant-Garde Crime Romance LGBTQ+ TV_Movie Adventure Cult Family History War Mystery Erotica)

  belongs_to :user
  has_many :rentals, dependent: :destroy
  validates :synopsis, :director, :title, :year, presence: true
  validates :genre, inclusion: { in: GENRES }

  has_one_attached :poster_url

  has_many :users, through: :rentals
end
