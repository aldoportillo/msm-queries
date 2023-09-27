Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/directors", :controller => "directors", :action => "get_directors")
  get("/directors/eldest", :controller => "directors", :action => "get_oldest_director")
  get("/directors/youngest", :controller => "directors", :action => "get_youngest_director")
  get("/directors/:id", :controller => "directors", :action => "get_director")

  get("/movies", :controller => "movies", :action => "get_movies")
  get("/movies/:id", :controller => "movies", :action => "get_movie")

  get("/actors", :controller => "actors", :action => "get_actors")
  get("/actors/:id", :controller => "actors", :action => "get_actor")

end
