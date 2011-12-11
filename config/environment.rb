# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Xfit::Application.initialize!

ActionMailer::Base.smtp_settings = {
  :address => "smtp.sendgrid.net",
  :port => 25,
  :domain => "sendgrid.com",
  :authentication => :plain
}
