Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })
  get("/directors", {:controller => "directors", :action => "index"})
  get("/directors/eldest",{:controller => "directors", :action => "wisest"})
  get("/directors/youngest", {:controller => "directors", :action => "foolest"})
  get("/directors/:an_id", {:controller => "directors", :action => "director_details"})


  get("/movies", {:controller => "movies", :action => "index_movies"})
  get("/movies/:movie_id", {:controller => "movies", :action => "movie_details"})

  get("/actors", {:controller => "actor", :action => "index_actor"})
  get("/actors/:actor_id", {:controller => "actor", :action => "actor_details"})
end
