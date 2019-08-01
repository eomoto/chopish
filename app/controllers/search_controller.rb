class SearchController < ApplicationController
  def show
    string = "https://api.nal.usda.gov/ndb/list?max=2000&api_key=#{ENV['USDA_API_KEY']}"
    response = RestClient.get(string)
    json = JSON.parse(response)
    @foods = json
  end
end
