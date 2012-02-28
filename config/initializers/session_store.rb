# -*- encoding : utf-8 -*-
# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_careyfer_session',
  :secret      => '9eff859631b1193f3595aee90b0185282c96ce2b7899427039ca3fc1420c096855d258f354def7c4c9dd92bbc081f0c29127df96b898a8aa1db50439abdba7e4'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
