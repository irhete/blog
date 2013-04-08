require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  def test_comment_received_email
    post = Post.create(name: 'Irene', email: 'irene.teinemaa@gmail.com', title: 'terere', content: 'fjks djfksj dl fjskdf')
 
    # Send the email, then test that it got queued
    email = UserMailer.comment_received_email(post).deliver
    assert !ActionMailer::Base.deliveries.empty?
 
    # Test the body of the sent email contains what we expect it to
    assert_equal [post.email], email.to
    assert_equal "New comment", email.subject
    assert_match(/<h1>Hi, #{post.name}<\/h1>/, email.encoded)
    assert_match(/Hi, #{post.name}/, email.encoded)
  end
end
