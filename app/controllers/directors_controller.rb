class DirectorsController < ApplicationController
  def wisest
    render({:template => "director_templates/eldest.html.erb"})
  end



  def index
    @list_of_directors = Director.all
  
    render({:template => "director_templates/index.html.erb"})
  end
end
