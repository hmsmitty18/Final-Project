require "nokogiri"
require "open-uri"

class Rain 

  def initialize 
    html = open("http://www.weather.com/weather/today/New+York+NY+10028:4:US")
    doc = Nokogiri::HTML(html)
    @rain_today = doc.css(".wx-data").children[2].text

  end

  def view_rain
    @rain_today
  end

end 


today = Rain.new
today.view_rain