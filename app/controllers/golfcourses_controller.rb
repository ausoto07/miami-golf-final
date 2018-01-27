class GolfcoursesController < ApplicationController
  def index
    require "httparty"

    url = "https://miami.craigslist.org/search/sof"

    response = HTTParty.get url

    puts response.body


  end
end
