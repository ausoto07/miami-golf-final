class GolfcoursesController < ApplicationController
  def index

    @request_tee_times = TeeTimeApi.get_tee_times(params[:usersdate] || Date.today) #app/services
    #@request_weather_forecast = WeatherApi.forecast() #app/services


  #  <% @request_weather_forecast.each do |forecast| %>
    #  <% Time.at(forecast_parsed_body['list'][0]['dt']) %>
  #  <% end %>

  end

private
  def search_params
    params.require(:usersdate)#users input in date_field_tag
  end

end
