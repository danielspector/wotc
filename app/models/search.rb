class Search < ActiveRecord::Base
  def yelp_api
     client = Yelp::Client.new
     request = Location.new(term: @name, city: @location)
     response = client.search(request)
  end
end
