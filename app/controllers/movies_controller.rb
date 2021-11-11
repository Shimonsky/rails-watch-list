class MoviesController < ApplicationController
  before_action :find_movie, only: %i[show edit update destroy]

  def index
    @movies = Movie.all
  end

  def show 
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.create(movie_params)
    if movie.save
      redirect_to movie_path(@movie)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @movie.update(movie_params)
    redirect_to movie_path
  end

  def destroy
    @movie.destroy
    redirect_to movie_path
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :overview, :poster_url, :rating)
  end

  def find_movie
    @movie = Movie.find(params[:id])
  end
end
