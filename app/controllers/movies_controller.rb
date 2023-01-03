class MoviesController < ApplicationController
  
  def index
    movies = Movie.all
    render json: movies
  end

  def create
    # byebug
    movie = Movie.create(movie_params)
    render json: movie, status: :created
  end

  private

  #strong params
  def movie_params
    params.permit(:title, :year, :length, :director, :description, :poster_url, :category, :discount, :female_director)
  end

end
