class WeatherLookup
  attr_accessor :temperature, :weather_condition, :city, :state, :zip

  def initialize(zip)
    self.zip = zip
    zip = 91765 if zip.blank?
    weather_hash = fetch_weather(zip)
    weather_values(weather_hash)
  end

  def fetch_weather(zip)
    p zip

    HTTParty.get("http://api.wunderground.com/api/" + ENV['WEATHER_API_KEY'] + "/geolookup/conditions/q/#{zip}.json")
  end

  def weather_values(weather_hash)
    self.temperature = weather_hash.parsed_response['current_observation']['temp_f']
    self.weather_condition = weather_hash.parsed_response['current_observation']['weather']
    self.city = weather_hash.parsed_response['location']['city']
    self.state = weather_hash.parsed_response['location']['state']
  end
end