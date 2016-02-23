
class Alert
  def initialize(zip)
    @response = HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/alerts/q/#{zip}.json")
    # @response = JSON.parse(File.read("alert.json"))
  end

  def get_alert
    alerts = @response["alerts"]
    long_text = []
    if alerts
      alerts.each do |x|
        long_text << "The following alerts are in effect"
        long_text << "#{x["description"]}"
        long_text << "#{x["message"]}"
        end
    else
      long_text << "There are no weather alerts for this location."
    end
    return long_text
  end

end
