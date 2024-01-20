class MoviesController < ApplicationController
  def top_rated
    proxy_url = "http://tmdb.lewagon.com/movie/top_rated"
    response = open(proxy_url).read
    data = JSON.parse(response)
    @top_rated_movies = data['results']
  end

  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to movies_path(@movie)
    else
      render :new
    end
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :overview, :rating)
  end
end
