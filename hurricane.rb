class Hurricane


  def initialize(zip)
    @response = HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/currenthurricane/view.json")
    # @response = JSON.parse(File.read("hurricane.json"))
  end

  def get_hurricane
    hurricanes = @response["currenthurricane"]
    long_text = []
    if hurricanes
      long_text << "--:: HURRICANE WARNINGS ::--"
      hurricanes.each do |h|
      long_text << "Storm Title : #{h["stormInfo"]["stormName_Nice"]}"
      long_text << "Storm Category : #{h["Current"]["Category"]}"
      end
    else
      long_text << "-- No Hurricanes To Report --"
    end
    return long_text
  end

end
