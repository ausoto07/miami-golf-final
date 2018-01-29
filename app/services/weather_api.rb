class WeatherApi

  def self.forecast()

    url = "http://api.openweathermap.org/data/2.5/forecast?id=524901&APPID=22cc656f6993eccb9585894f35de1451"

    response = HTTParty.get url
    body = response.body
    JSON.parse(body)
  end

end
