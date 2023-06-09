class MoviesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
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


  private

  def movie_params
    params.require(:movie).permit(:title, :price, :year, :synopsis, :director, :genre, :poster_url)
  end
end
