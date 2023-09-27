class DirectorsController < ApplicationController

  def get_directors
    @directors = Director.all
    @type = "directors"

    render({:template => "individuals/all_individuals"})
  end

  def get_director
    @id = params.fetch("id")
    @type = "Director"

    @director_info = Director.where({:id => @id}).at(0)

    render({:template => "individuals/single_individual"})
  end

  def get_oldest_director
  end

  def get_youngest_director
  end

end
