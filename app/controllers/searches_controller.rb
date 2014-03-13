class SearchesController < ApplicationController
  def index
    @display = Search.last
  end

  def create
    @name = params[:search][:query1] if params[:search]
    @location = params[:search][:query2] if params[:search]
    search = Search.new
    @wisdom = search.yelp_api(@name, @location)
    search.name = @wisdom["name"]
    search.url = @wisdom["url"]
    search.save
    redirect_to searches_path
  end
end
