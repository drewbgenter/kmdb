class MoviesController < ApplicationController
  def index
    @list_of_movies = Movie.all
  end

  def show
    # Your code goes here
    # Use the information after the slash in the URL to look up the movie with the corresponding ID number
    # Store the movie in the @movie instance variable so the view can format it

    # @movie = ???
    the_id=params[:id]
    id_hash=Movie.find_by({:id=>the_id})
    @movie=id_hash
  end
end
