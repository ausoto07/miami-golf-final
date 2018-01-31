class GolfcoursesController < ApplicationController
  def index
    @request_tee_times = TeeTimeApi.get_tee_times(params[:usersdate] || Date.today) #app/services
     @request_weather_forecast = WeatherApi.forecast() || Date.today #app/services
  end

  def send_booking_email

    course_id = params['hidden_golfcourse_id'] #gets course_id from API
    @tee_time = params['teetime']
    @name = params['name']
    @email = params['email']
    @telephone = params['telephone']

    email = TeeTimeApi::GOLFCOURSE_EMAILS[course_id] #gets the email of the corresponding course by id. See TeeTimeApi class.
    TeetimeconfirmationMailer.send_booking_email(email).deliver_now
    redirect_to root_path
    return
  end

private
  def search_params
    params.require(:usersdate)#users input in date_field_tag
  end

end
