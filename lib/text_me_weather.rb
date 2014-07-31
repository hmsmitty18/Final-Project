require_relative 'weather.rb'
require_relative 'umbrella.rb'
require 'twilio-ruby'




class Text 

    def text

      @weather = Weather.new
    
      @rain = Rain.new
      
      account_sid = 'ACe330ba04d082392df4cb3511dcb72cec'
      auth_token = '2008ea097713e401a16c54029058da82'

      @client = Twilio::REST::Client.new account_sid, auth_token
      @client.account.messages.create(

        :from => '+18152642023',
        :to => '+16468121991',
        :body => "Hey Harrison! The weather now is #{@weather.weather_now}. The weather today is #{@weather.weather_today}. The tempature tonight is #{@weather.weather_tonight} The percent chance of rain today is: #{@rain.view_rain}"
      )

    end

end
