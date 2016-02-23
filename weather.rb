require './conditions'
require './forecast'
require './astronomy'


# puts "Enter Zip"
# zip = gets.chomp


c = Condition.new(19103)
puts "Location: #{c.location}"
puts "Temp: #{c.temperature}"
puts "Current Weather : #{c.current_weather}"


w = Forecast.new(19103)
puts w.get_forecast

a = Astronomy.new(19103)
puts a.get_astronomy_sunrise.to_s
puts a.get_astronomy_sunset.to_s
