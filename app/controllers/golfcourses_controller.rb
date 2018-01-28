class GolfcoursesController < ApplicationController
  def index

    @request = TeeTimeApi.get_tee_times(params[:usersdate] || Date.today) # /services
  end

private
  def search_params
    params.require(:usersdate)
  end

end
