require 'pry'
require 'net/http'
require 'open-uri'
require 'json'

class GetRequester

def initialize(url)
  @URL = URL
end

def get_response_body
  uri = URI.parse(URL)
  response = Net::HTTP.get_response(uri)
  response.body
end

def parse_json
  people = JSON.parse(self.get_response_body)
  people.each do |person|
    person["people"]
  end
end

end
