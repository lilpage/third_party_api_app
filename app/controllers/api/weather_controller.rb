class Api::WeatherController < ApplicationController

  def index
    response = HTTP.get("http://api.airvisual.com/v2/countries?key=#{Rails.application.credentials.weather_api[:api_key]}")
    render json: response.parse
  end

end
