# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_gemstream_session',
  :secret      => 'd7b410e8bc12d3cda44690654715a0154da4d3974d808359f404ecbb44fa5ab2e327d857bcfac24cf8ff26c848fa1d43c97761c2d3f3c3d195179b4d15387fdd'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
ActionController::Base.session_store = :active_record_store