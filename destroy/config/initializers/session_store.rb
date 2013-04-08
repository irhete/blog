# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_destroy_session',
  :secret      => '984447c0f46eacc6493087da2bd7abb6f742368f459ccb97f54d3a9d52e567d622777196afaabb7324c8e8836cecb739d6551314c36a2beba7c99066bd5e9cd0'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
