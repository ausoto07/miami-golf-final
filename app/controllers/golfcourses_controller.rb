class GolfcoursesController < ApplicationController
  def index
    @request_tee_times = TeeTimeApi.get_tee_times(params[:usersdate] || Date.today) #app/services
     @request_weather_forecast = WeatherApi.forecast() || Date.today #app/services
  end

  def send_booking_email
    byebug
    course_id = params['course_id']
    email = TeeTimeApi::GOLFCOURSE_EMAILS[course_id]
    

    return

  end

private
  def search_params
    params.require(:usersdate)#users input in date_field_tag
  end

end
