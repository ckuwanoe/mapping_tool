# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_mapping_tool_session',
  :secret      => '659d8158b08a73fe4a95bedd7de27264c00d3c3863f6ca6f6082706755500d846745edeeb4ab83fe40a19ede81292c3a7f4bb955672a685f3e3e13620e7c5625'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
