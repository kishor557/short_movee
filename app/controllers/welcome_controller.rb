class WelcomeController < ApplicationController

  def index
    @movie = Movie.first
    @list = Movie.first(4)
  end

  def about
  end
  
  def contact
  end
  
end
