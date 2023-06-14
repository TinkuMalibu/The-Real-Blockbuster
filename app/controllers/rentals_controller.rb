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
    @rental.user = current_user

    rent_date = Date.parse(params[:rental][:rent_date])
    return_date = Date.parse(params[:rental][:return_date])
    days_difference = (return_date - rent_date).to_i

    @rental.days_rented = days_difference

    if @rental.save
      @rental.movie.update(available: false)
      redirect_to rental_path(@rental)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @rental = Rental.find(params[:id])
  end

  def edit
  end

  private

  def params_rental
    params.require(:rental).permit(:return_date, :rent_date, :user_id, :movie_id)
  end
end
