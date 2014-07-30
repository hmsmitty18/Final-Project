require "nokogiri"
require "open-uri"

class Weather

  def initialize
    html = open("http://www.weather.com/weather/today/New+York+NY+10028:4:US")
    @doc = Nokogiri::HTML(html)

  end

  def weather_now
    @doc.css(".wx-temperature").children[0..1].text    
  end

  def weather_today
    @doc.css(".wx-temperature").children[2..3].text    
  end

 def weather_tonight
    @doc.css(".wx-temperature").children[4..5].text    
  end

end



test = Weather.new
test.weather_now
test.weather_today
test.weather_tonight