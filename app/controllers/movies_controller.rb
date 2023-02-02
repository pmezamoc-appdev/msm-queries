class MoviesController < ApplicationController

def index_movies
  @list_of_movies = Movie.all
  render({:template => "other_templates/show_movies.html.erb"})
end

end
