class NotificationsMailer < ActionMailer::Base
  default from: "web@thumbtacksoftware.com"
  default to:   "john@thumbtacksoftware.com"

  def new_message(message)
    @message = message
    mail(:subject => "New from TTS: #{message.subject}")
  end
end
