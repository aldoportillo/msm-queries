Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/directors", :controller => "directors", :action => "get_directors")
  get("/directors/oldest", :controller => "directors", :action => "get_oldest_director")
  get("/directors/youngest", :controller => "directors", :action => "get_youngest_director")

  get("/movies", :controller => "movies", :action => "get_movies")

  get("/actors", :controller => "actors", :action => "get_actors")

end
