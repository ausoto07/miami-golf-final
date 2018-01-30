class WeatherApi

  def self.forecast()

    url = "http://api.openweathermap.org/data/2.5/forecast?q=Miami,us&mode=xml,id=524901&APPID=22cc656f6993eccb9585894f35de1451"

    response = HTTParty.get url
    body = response.body
    clean_body = JSON.parse(body)

    new_array = []
    clean_body['list'].each do |time|
      dt2 = time['dt']
      dt3 = Time.at(dt2).hour
      if dt3 < 17 && dt3 > 7
        new_array.push(time)
      end
    end
    new_array
  end
end
