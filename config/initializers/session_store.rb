# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_newsprankr_session',
  :secret      => '8111421c38bc53c87519db945678e91f59e4f47b36842dbcecea444ec526417f3398d7dfdab838991fc7e45eff1fcd62a76ae30b10694cea954f7c2cb10afaf4'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
