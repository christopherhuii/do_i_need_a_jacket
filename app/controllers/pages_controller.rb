class PagesController < ApplicationController

  def home
    @weather_lookup = WeatherLookup.new(params[:zip])
  end
end
