class DirectorsController < ApplicationController

  def get_directors
    @people = Director.all
    @type = "directors"

    render({:template => "individuals/all_individuals"})
  end

  def get_director
    @id = params.fetch("id")
    @type = "Director"

    @personal_info = Director.where({:id => @id}).at(0)

    @filmography = Movie.where({:director_id => @id})

    render({:template => "individuals/single_individual"})
  end

  def get_oldest_director

    @director = Director.order(:dob).at(0)
    @type = "oldest"

    render({:template => "individuals/director"})
  end

  def get_youngest_director
    @director = Director.order(:dob).at(-1)
    @type = "youngest"

    render({:template => "individuals/director"})
  end

end
