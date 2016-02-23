class Astronomy
# attr_reader :astronomy
  def initialize(zip)
      # @response = HTTParty.get("http://api.wunderground.com/api/700bba40726c274e/astronomy/q/#{zip}.json")
      @response = JSON.parse(File.read("astronomy.json"))
  end

    def get_astronomy_sunrise
      sunrise_hour = @response["sun_phase"]["sunrise"]["hour"]
      sunrise_minute = @response["sun_phase"]["sunrise"]["minute"]
      return "Sunrise will take place at #{sunrise_hour}:#{sunrise_minute}"
    end

    def get_astronomy_sunset
      sunset_hour = @response["sun_phase"]["sunset"]["hour"]
      sunset_minute = @response["sun_phase"]["sunset"]["minute"]
      return "Sunset will take place at #{sunset_hour}:#{sunset_minute}"
    end
end
