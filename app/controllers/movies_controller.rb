class MoviesController < ApplicationController

  def get_movies
    @movies = Movie.all

    render({:template => "movies/all_movies"})
  end

  def get_movie

  end

end
