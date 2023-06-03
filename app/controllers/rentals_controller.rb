class RentalsController < ApplicationController
  def index
    @rentals = Rental.all
  end

  def new
    @movie = Movie.find(params[:movie_id])
    @rental = Rental.new
  end

  def create
    @movie = Movie.find(params[:movie_id])
    @rental = Rental.new(params_rental)
    @rental.movie = @movie
    if @rental.save
      redirect_to movie_path(@movie)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @rental = Rental.new
  end

  def edit
  end

  private

  def params_rental
    params.require(:rental).permit(:date, :return_date)
  end
end
