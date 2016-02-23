# Basic test requires
require 'minitest/autorun'
require 'minitest/pride'
require 'byebug'
require './conditions'
require './forecast'
require 'json'
require './astronomy'
require './alert'
require './hurricane'

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

class Astronomy
  def initialize(zip)
    @response = JSON.parse(File.read("astronomy.json"))
  end
end

class Alert
  def initialize(zip)
    @response = JSON.parse(File.read("alert.json"))
  end
end

class Hurricane
  def initialize(zip)
    @response = JSON.parse(File.read("hurricane.json"))
  end
end

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
    refute w.get_forecast.empty?
  end

  def test_astronomy
    a = Astronomy.new(19102)
    a.get_astronomy_sunrise
    a.get_astronomy_sunset
    assert a.get_astronomy_sunrise
    assert a.get_astronomy_sunset
    refute a.get_astronomy_sunrise.empty?
    refute a.get_astronomy_sunset.empty?
  end

  def test_alert
    alert1 = Alert.new(19102)
    alert1.get_alert
    assert alert1.get_alert
    refute alert1.get_alert.empty?
  end

  def test_hurricane
    h = Hurricane.new(19102)
    h.get_hurricane
    assert h.get_hurricane
    refute h.get_hurricane.empty?
  end
end
