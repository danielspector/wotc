class Search < ActiveRecord::Base
  def yelp_api(name=nil, location=nil)
     client = Yelp::Client.new
     request = Location.new(term: name, city: location)
     response = client.search(request)
     @result = response["businesses"].sort_by{|i| i["rating"]}.last
     # @biz_name = @result["name"]
  end
end
