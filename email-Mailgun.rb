require "mailgun"

Mailgun.configure do |config|
  config.api_key = 'key-77d743df2075b5838ed1682a53a39bd0'
  config.domain  = 'sandboxe183b214abd048f4ba71b14c7cbb873d.mailgun.org'

end

@mailgun = Mailgun()


parameters = {
  :to => "hmsmitty111898@gmail.com",
  :subject => "IDK",
  :text => "yeah, we're gonna need you to come in on friday...yeah.",
  :from => "postmaster@sandboxe183b214abd048f4ba71b14c7cbb873d.mailgun.org"
}
@mailgun.messages.send_email(parameters)