# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_exceld_session',
  :secret      => '3b758b90d9b6e2fbed32dacc1df946a5511fd10bb78e56444ae90c4f3fe7af7a6488bf9f2faf5d4b0f41d81ba8ac98a6d09c29ae3a9ba421c3703a46713e9bea'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
