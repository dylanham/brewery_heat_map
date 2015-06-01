class BrewerydbApi

  def initialize
    @conn = Faraday.new(:url => 'http://api.brewerydb.com/')
  end

  def breweries
    response = @conn.get do |req|
      req.url "/v2/breweries?key=#{ENV['secret_db_key']}&format=json"
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def brewery_locations(page_number)
    response = @conn.get do |req|
      req.url "/v2/locations?key=#{ENV['secret_db_key']}&format=json&p=#{page_number}"
    end
    JSON.parse(response.body, symbolize_names: true)
  end
end
