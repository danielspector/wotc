class SearchesController < ApplicationController
  def index
  
    # @name = "barber"
    # @location = "san francisco"
    # search = Search.new
    # @wisdom = search.yelp_api(@name, @location)
    @display = Search.last
    # binding.pry
  end

  def create
    @name = params[:search][:query1] if params[:search]
    @location = params[:search][:query2] if params[:search]
    search = Search.new
    @wisdom = search.yelp_api(@name, @location)
    search.name = @wisdom["name"]
    search.save
    redirect_to searches_path
  end

  def show
    @result
  end
end
