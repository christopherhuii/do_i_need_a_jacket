module PagesHelper

  def weather_information
    if @weather_lookup.temperature >= 75
      @hot_weather
    elsif @weather_lookup.temperature >= 63
      @medium_weather
    else
      @cold_weather
    end
  end
end
