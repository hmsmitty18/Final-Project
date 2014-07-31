require 'bundler' #require bundler
Bundler.require #require everything in bundler in gemfile
require 'pry'

require 'bundler' #require bundler
Bundler.require #require everything in bundler in gemfile
require 'pry'
require './lib/text_me_weather.rb'
require './lib/umbrella.rb'
require './lib/weather.rb'

get '/' do
  @weather =  Weather.new
  @rain = Rain.new
  erb :index
end