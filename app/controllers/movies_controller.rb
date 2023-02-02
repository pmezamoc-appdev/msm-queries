class MoviesController < ApplicationController

def index_movies
  @list_of_movies = Movie.all
  render({:template => "other_templates/show_movies.html.erb"})
end

def movie_details
  the_id = params.fetch("movie_id")
  @movie = Movie.where({:id => the_id}).first
  render({:template => "other_templates/movie_details.html.erb"})
end

end
