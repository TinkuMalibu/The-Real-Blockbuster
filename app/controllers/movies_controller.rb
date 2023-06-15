class MoviesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @movies = Movie.all
    if params[:query].present?
      @movies = @movies.where("title ILIKE ?", "%#{params[:query]}%")
    end
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    @movie.user = current_user
    if @movie.save
      redirect_to movies_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.update(movie_params)
    # No need for app/views/restaurants/update.html.erb
    redirect_to movie_path(@movie)
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    # No need for app/views/restaurants/destroy.html.erb
    redirect_to movie_path, status: :see_other
  end


  private

  def movie_params
    params.require(:movie).permit(:title, :price, :year, :synopsis, :director, :genre, :poster_url)
  end
end
