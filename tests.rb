# Basic test requires
require 'minitest/autorun'
require 'minitest/pride'
require 'byebug'
require './conditions'
require './forecast'
require 'json'
require './astronomy'

# class Condition
#   def initialize(zip)
#     @response = JSON.parse(File.read("condition.json"))
#   end
# end
#
# class Forecast
#   def initialize(zip)
#     @response = JSON.parse(File.read("forecast.json"))
#   end


#
# end


class WeatherTests < Minitest::Test

  def test_class_exists
    w = Condition.new(19102)
    f = Forecast.new(19102)
    a = Astronomy.new(19102)
  end


  def test_conditions
    c = Condition.new(19102)
    assert_equal "Partly Cloudy", c.current_weather
    assert_equal "Philadelphia, PA", c.location
    assert_equal 52.9, c.temperature
  end

def test_forecast
    w = Forecast.new(19102)
    assert w.get_forecast

  end

def test_astronomy
    a = Astronomy.new(19102)
    a.get_astronomy_sunrise
    a.get_astronomy_sunset
end

end
