Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", { :controller => "directors", :action => "index" })

  get("/directors/eldest", { :controller => "directors", :action => "wisest" })

  get("/directors/youngest", { :controller => "directors", :action => "youngest" })

  get("/directors/:an_id", { :controller => "directors", :action => "director_details" })

  get("/movies", { :controller => "directors", :action => "movies_index" })

  get("/movies/:an_id", { :controller => "directors", :action => "movie_details" })

  get("/actors", { :controller => "directors", :action => "actors_index" })

  get("/actor/:an_id", { :controller => "directors", :action => "actor_details" })


end
