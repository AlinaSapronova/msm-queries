class DirectorsController < ApplicationController

  def list_of_directors
    render({:template => "director_page/list"})
  end

  def show_details
    person_id = params.fetch("director_id")
    director = Director.where({:id => person_id})
    @person = director.at(0)
    render({:template => "director_page/details"})
  end

def youngest_director
  render({:template => "director_page/the_youngest_director"})
end
end
