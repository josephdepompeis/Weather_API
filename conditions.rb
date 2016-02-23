require 'httparty'

class Condition

  def initialize(zip)
    # @response = HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/conditions/q/#{zip}.json")
      @response = JSON.parse(File.read("condition.json"))
  end

  def temperature
    @response["current_observation"]["temp_f"]
  end

  def location
    @response["current_observation"]["display_location"]["full"]
  end

  def current_weather
    @response["current_observation"]["weather"]
  end



end
