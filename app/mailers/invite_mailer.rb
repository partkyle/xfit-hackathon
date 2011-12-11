class InviteMailer < ActionMailer::Base
  include SendGrid

  default from: "kyle.partridge@sendgrid.com"

  def send_invite(user)
    @user = user
    mail(:to => @user.email, :subject => "Welcome #{user.email}")
  end
end
