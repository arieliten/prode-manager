# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_prode-sudafrica_session',
  :secret      => '1128a65db11b929b5eeee3554cba7b77d82fb6d5b6d5824da58c2558eea6bcf20773a4964d167ac1a6647a0775121ab0a9a02b05f1b00f845798646a21693bd7'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
