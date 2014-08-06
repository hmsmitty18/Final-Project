require "nokogiri"
require "open-uri"


class News 

  def initialize 
    html = open("http://www.weather.com/weather/today/New+York+NY+10028:4:US")
    doc = Nokogiri::HTML(html)
    @news = doc.css(".wx-condition").children[2].text