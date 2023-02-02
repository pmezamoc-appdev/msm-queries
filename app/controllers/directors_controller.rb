class DirectorsController < ApplicationController
  def wisest
    @oldest =  Director.order({:dob => :asc}).where.not({:dob => nil}).at(0)
    render({:template => "director_templates/eldest.html.erb"})
  end

  def foolest
    @youngest =  Director.order({:dob => :desc}).where.not({:dob => nil}).at(0)
    render({:template => "director_templates/youngest.html.erb"})
  end


  def index
    @list_of_directors = Director.all
  
    render({:template => "director_templates/index.html.erb"})
  end

  def director_details
    the_id = params.fetch("an_id")
    @the_director = Director.where({:id => the_id}).first
    render({:template => "director_templates/show.html.erb"})
  end

end
