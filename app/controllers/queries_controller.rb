class QueriesController < ApplicationController

  def create
    @query = Query.new(query_params)
    if @query.save
      redirect_to :back, notice: "Your query has been submitted, Thank you!"
    else
      redirect_to :back, object: @query, alert: "Your query has not been submitted!"
    end
  end
 
 private
 def query_params
   params.require(:query).permit(:email, :subject, :content)
 end
end
