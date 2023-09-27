class ActorsController < ApplicationController

  def get_actors

    @actors = Actor.all

    render({:template => "actors/all_actors"})
  end

end
