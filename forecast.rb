class Forecast

  def initialize(zip)
    # @response = HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/forecast10day/q/#{zip}.json")
      @response = JSON.parse(File.read("forecast.json"))
  end

  def day0
    @response["forecast"]["forecastday"][0]["fcttext"]
  end




end
