class PagesController < ApplicationController

  def home
    @weather_lookup = WeatherLookup.new(params[:zip])
    @weather_phrases = Weather.all

    @hot_weather = @weather_phrases.where(condition: "hot").sample.weather_phrase
    @medium_weather = @weather_phrases.where(condition: "medium").sample.weather_phrase
    @cold_weather = @weather_phrases.where(condition: "cold").sample.weather_phrase

  end
end
