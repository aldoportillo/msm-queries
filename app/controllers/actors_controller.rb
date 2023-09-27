class ActorsController < ApplicationController

  def get_actors

    @actors = Actor.all
    @type = "actors"

    render({:template => "individuals/all_individuals"})
  end

  def get_actor
    @id = params.fetch("id")
    @type = "Actor"

    @actor_info = Actor.where({:id => @id}).at(0)

    render({:template => "individuals/single_individual"})
  end

end
