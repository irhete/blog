require 'rubygems'
require 'action_mailer'

class UserMailer < ActionMailer::Base
  default :from => "from@example.com"

  def comment_received_email(post)
    @post = post
    mail(:to => post.email, :subject => "New comment")
  end
end
