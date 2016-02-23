# Basic test requires
require 'minitest/autorun'
require 'minitest/pride'
require 'byebug'
require './conditions'
require './forecast'
require 'json'

class Condition
  def initialize(zip)
    @response = JSON.parse(File.read("condition.json"))
  end
end

class Forecast
  def initialize(zip)
    @response = JSON.parse(File.read("forecast.json"))
  end
end


class WeatherTests < Minitest::Test

  def test_class_exists
    w = Condition.new(19102)
    f = Forecast.new(19102)
  end


  def test_conditions
    c = Condition.new(19102)
    assert_equal "Partly Cloudy", c.current_weather
    assert_equal "Philadelphia, PA", c.location
    assert_equal 52.9, c.temperature
  end

def test_forecast
    w = Forecast.new(19102)
    assert_equal "bonerville", w.get_forecast

  end



end
