class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :movies, dependent: :destroy
  has_many :rentals, dependent: :destroy
  has_many :movies, through: :rentals

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
