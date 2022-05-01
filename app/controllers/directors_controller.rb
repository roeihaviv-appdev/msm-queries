class DirectorsController < ApplicationController

  def index
    @list_of_directors = Director.all

    render({ :template => "director_templates/index.html.erb"})
  end

  def wisest
    
    @oldest = Director.where.not({ :dob => nil }).order({ :dob => :asc }).at(0)
    render({ :template => "director_templates/eldest.html.erb"})
  end

  def youngest

    @youngest = Director.order({ :dob => :desc }).at(0)
    render({ :template => "director_templates/youngest.html.erb"})
  end

  def director_details

    the_id = params.fetch("an_id")

    @the_director = Director.where({ :id => the_id }).at(0)
    
    @filmography = Movie.where({ :director_id => @the_director.id })

    render({ :template => "director_templates/show.html.erb"})
  end

  def movies_index
    
    render({ :template => "movie_templates/films.html.erb"})
  end

  def movie_details

    the_id = params.fetch("an_id")

    @the_movie = Movie.where({ :id => the_id }).at(0)
    @director_name = Director.name

    render({ :template => "movie_templates/movie_details.html.erb"})
  end

  def actors_index
    
    render({ :template => "actor_templates/actors.html.erb"})
  end

  def actor_details

    the_id = params.fetch("an_id")

    @the_actor = Actor.where({ :id => the_id }).at(0)
    @the_director = Director.where({ :id => the_id }).at(0)
    @filmography = Movie.where({ :id => @the_actor.id })

    render({ :template => "actor_templates/actor_details.html.erb"})
  end

end
