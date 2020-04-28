# Write your code here
require 'net/http'
require 'open-uri'
require 'json'

class GetRequester
  def initialize(url)
    @url = url
  end

  URL = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"

  def get_response_body
    uri = URI.parse(@url)
    response = Net::HTTP.get_response_body(uri)
    response.body
    #sends a GET request to the URL passed in on initialization. This method
    #should return the body of the response
  end

  def parse_json
    parse = JSON.parse(self.get_response_body)
      parse.collect do |body|
        parse[" "]
      end
    #use get_response_body to send a request, then return a Ruby Array or
    #Hash made up of data converted from the response of that request
  end


end
