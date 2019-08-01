class HomeController < ApplicationController
  def index
    string = "https://api.nal.usda.gov/ndb/list?max=10000&offset=500&api_key=#{ENV['USDA_API_KEY']}"
    response = RestClient.get(string)
    json = JSON.parse(response)
    @foods = json["list"]["item"].map{|item| item["name"].titleize}
  end
end
