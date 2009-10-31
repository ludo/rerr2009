class LibraryMailer < ActionMailer::Base
  def notification(user, event)
    recipients    user.email
    from          "Gemstream <gemstream@kabisa.nl>"
    subject       "You have updates"
    sent_on       Time.now
    body          :event => event
  end
end
