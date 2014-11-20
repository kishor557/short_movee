class MoviesController < ApplicationController

 def index
   @movies = Movie.order('created_at DESC')
 end

 def new
   @movie = Movie.new
   
   respond_to do |format|
     format.html { render layout:  'empty' }
     format.js { render layout: false }
   end  
 end
 
 def create
   @movie = Movie.new(movie_params)
   if @movie.save
     redirect_to root_path, notice: "Done!"
   else
     render 'new', alert: "#{@movie.errors.full_messages.first}"
   end
 end

 def show
   @movie = Movie.find(params[:id])
      
   respond_to do |format|
     format.html
     format.js { render layout: false }
   end  
 end

 def movie_params
   params.require(:movie).permit(:url)
 end
end
