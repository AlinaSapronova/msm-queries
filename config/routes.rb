Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/directors", ({:controller => "directors", :action => "list_of_directors"}))

  get("/directors/:director_id", ({ :controller => "directors", :action => "show_details"}))

  get("/directors/youngest", ({:controller => "directors", :action => "youngest_director"}))
end
