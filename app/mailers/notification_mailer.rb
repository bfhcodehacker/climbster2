class NotificationMailer < ActionMailer::Base
  default from: "no-reply@climbsterapp.com"

  def comment_added
    mail(to: "brad.habenicht@gmail.com",
         subject: "A comment has been added to your place")
  end

end
