# -*- encoding : utf-8 -*-
class UserMailer < ActionMailer::Base
  #default from: "do-not-reply@example.com"

  def contact_email(contact)
    @contact = contact
    mail(to: ENV["OWNER_EMAIL"], from: @contact.email, :subject => "New message at JamesDong.com")
  end
end
