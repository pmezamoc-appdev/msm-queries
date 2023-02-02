class ActorController < ApplicationController

def index_actor
  @list_of_actors = Actor.all
  render({:template => "other_templates/show_actor"})
end

def actor_details 
  actor_id = params.fetch("actor_id")
  @filmography = Movie.where({:actor_id => actor_id})
  @actor = Actor.where({:id => actor_id}).first
  render({:template => "other_templates/actor_details"})
end

end
