class WeatherLookup
  attr_accessor :temperature, :weather_condition, :city, :state, :zip, :error

  def initialize(zip)
    self.zip = zip
    zip = 0 if zip.blank?
    weather_hash = fetch_weather(zip)
    weather_values(weather_hash)
  end

  def fetch_weather(zip)
    HTTParty.get("http://api.wunderground.com/api/" + ENV['WEATHER_API_KEY'] + "/geolookup/conditions/q/#{zip}.json")
  end

  def weather_values(weather_hash)
    if weather_hash.parsed_response['response']['error'].blank?
      self.temperature = weather_hash.parsed_response['current_observation']['temp_f']
      self.weather_condition = weather_hash.parsed_response['current_observation']['weather']
      self.city = weather_hash.parsed_response['location']['city']
      self.state = weather_hash.parsed_response['location']['state']
    else
      self.error = "No Cities Match Your Search Query"
    end
  end
end