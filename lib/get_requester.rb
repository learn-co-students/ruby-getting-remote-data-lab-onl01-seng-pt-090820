
require 'net/http'
 require 'open-uri'
 require 'json' 
 require 'pry'



class GetRequester

  def initialize(url)
    url = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"

  end

  def get_response_body
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    response.body
  end
# binding.pry
  def parse_json
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    JSON.parse(response.body)
  end



end