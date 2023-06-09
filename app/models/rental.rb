class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :movie
  

  validates :rent_date, :return_date, presence: true
end
