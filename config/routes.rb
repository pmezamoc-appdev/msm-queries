Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })
  get("/directors", {:controller => "directors", :action => "index"})
  get("/directors/:an_id", {:controller => "directors", :action => "director_details"})
  get("/directors/eldest",{:controller => "directors", :action => "wisest"})
  get("/directors/youngest", {:controller => "directors", :action => "foolest"})

  get("/movies", {:controller => "movies", :action => "index_movies"})
  get("actors", {:controller => "actor", :action => "index_actor"})
end
