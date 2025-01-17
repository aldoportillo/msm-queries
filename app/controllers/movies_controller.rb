class MoviesController < ApplicationController

  def get_movies
    @movies = Movie.all

    render({:template => "movies/all_movies"})
  end

  def get_movie

    @id = params.fetch("id")

    @movie_info = Movie.where({:id => @id}).at(0)

    @director_name = Director.where({:id => @movie_info.fetch("director_id")}).at(0).fetch("name")


    render({:template => "movies/single_movie"})
  end

  

end
