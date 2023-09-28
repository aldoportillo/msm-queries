class ActorsController < ApplicationController

  def get_actors

    @people = Actor.all
    @type = "actors"

    render({:template => "individuals/all_individuals"})
  end

  def get_actor
    @id = params.fetch("id")
    @type = "Actor"

    @personal_info = Actor.where({:id => @id}).at(0)

    @characters = Character.where({:actor_id => @id})
    
    render({:template => "individuals/single_individual"})
  end

end
