require './conditions'
require './forecast'
require './astronomy'
require './alert'
require './hurricane'
require 'HTTParty'


c = Condition.new(19103)
puts "Location: #{c.location}"
puts "Temp: #{c.temperature}"
puts "Current Weather : #{c.current_weather}"
puts ""
sleep(5)

w = Forecast.new(19103)
puts w.get_forecast
puts ""
sleep(5)

a = Astronomy.new(19103)
puts a.get_astronomy_sunrise.to_s
puts a.get_astronomy_sunset.to_s
puts ""
sleep(5)

alert = Alert.new(19103)
puts alert.get_alert
puts ""
sleep(5)

h = Hurricane.new(19103)
puts h.get_hurricane
