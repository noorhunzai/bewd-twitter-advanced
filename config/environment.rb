# Load the Rails application.
require File.expand_path('../application', __FILE__)
# Initialize the Rails application.
Rails.application.initialize!
ActionMailer::Base.smtp_settings = {
  :address        => ENV['smtp.mailgun.org'],
  :port           => ENV['587'],
  :authentication => :plain,
  :user_name      => ENV['postmaster@sandbox4aef5b4631944389a9f557d8ac5272f4.mailgun.org'],
  :password       => ENV['8a16dd0c9092e3e043a4a4a4365cccac-6d8d428c-3eb447d0'],
  :domain         => ENV['sandbox4aef5b4631944389a9f557d8ac5272f4.mailgun.org'],
  :enable_starttls_auto => true
}
ActionMailer::Base.default_url_options = { host: ENV['localhost:3000'] }