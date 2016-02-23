class Astronomy
# attr_reader :forecast
  def initialize(zip)
    # @response = HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/forecast10day/q/#{zip}.json")
      # @response  =HTTParty.get("http://api.wunderground.com/api/700bba40726c274e/astronomy/q/#{zip}.json")
      @response = JSON.parse(File.read("astronomy.json"))
  end

    def get_forecast
      puts "The ten day forecast is below:"
      days = @response["forecast"]["txt_forecast"]["forecastday"]
      days.each do |d|
        puts "On #{d["title"]}, science suggests #{d["fcttext"].downcase}."

      end
    end


end
