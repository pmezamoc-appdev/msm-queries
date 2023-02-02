class ActorController < ApplicationController

def index_actor
  @list_of_actors = Actor.all
  render({:template => "other_templates/show_actor"})
end

end
