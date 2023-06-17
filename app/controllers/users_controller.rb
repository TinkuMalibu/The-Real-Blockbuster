class UsersController < ApplicationController
  def index
    @rental = Rental.all
  end

  def show
    @user = User.find(params[:id])
    # @rental = Rental.find(@user.rentals.id)
  end

  def my_movies
  end
end
