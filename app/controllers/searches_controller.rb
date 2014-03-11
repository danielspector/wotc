class SearchesController < ApplicationController
  def index
  end

  def create
    @name = params[:search][:query1]
    @location = params[:search][:query2]
  end
end
