require 'byebug'

class Forecast
  def initialize(zip)
    @response = HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/forecast10day/q/#{zip}.json")
      # @response = JSON.parse(File.read("forecast.json"))
  end

  def get_forecast
    long_text = ["--Ten Day N' Night Forcast--  "]
    days = @response["forecast"]["txt_forecast"]["forecastday"]
    days.each do |d|
      long_text << "On #{d["title"]}, science suggests #{d["fcttext"].downcase}"
      end
    return long_text.to_s
  end


end
