require './conditions'
require './forecast'

# class Forecast
#   def initialize(zip)
#     @response = JSON.parse(File.read("forecast.json"))
#   end
# end



puts "Enter Zip"
zip = gets.chomp


c = Condition.new(zip)
puts "Location: #{c.location}"
puts "Temp: #{c.temperature}"
puts "Current Weather : #{c.current_weather}"


w = Forecast.new(zip)
w.get_forecast
# puts "here's some data !  #{w.get_forecast}"
