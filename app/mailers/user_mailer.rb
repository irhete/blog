require 'rubygems'
require 'action_mailer'

class UserMailer < ActionMailer::Base
  default :from => "rubykursustest1@gmail.com"

  def comment_received_email(post)
    @post = post
    mail(:to => post.email, :subject => "New comment")
  end
end
