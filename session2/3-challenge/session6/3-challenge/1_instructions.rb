# You're going to build an app now!
# You want to be able to send secret messages to your best friend
# without your pesky little sister being able to read them. So you
# decide on a Caesar Cipher, for every alphabetic character, you
# will exchange it with a character three larger, wrapping around:
#   "a" => "d"
#   "z" => "c"
#   "A" => "D"
#   "B" => "E"
#   "0" => "3"
#   "9" => "2"
#
# But your best friend is kind of a numbskull, he keeps messing
# it up. So you decide to write a web application to encrypt
# the message for him.
#
# When he goes to yourapp.com/encrypt, he will be presented
# with a form that he can type his message into. When he
# posts it to yourapp.com/encrypted, he will be presented
# with the encrypted message.
#
# When he goes to yourapp.com/decrypt, he will be presented
# with a form that he can type the encrypted message into.
# When he posts it to yourapp.com/decrypted, he will be
# presented with the decrypted message.

#Steps:
# Put under source control
# Create main.rb (require Sinatra)
# Install RSpec and Capybara and Racktest
# Create the Gemfile (source https://rubygems.org )
# Add Sinatra ('~> 1.4') and Racktest ('~> 0.6')
# Install Gems
# $ bundle exec rspec spec
# Write the Sinatra Application (in lib)
# Should be a CaesarCipher module
# with class method encrypt
# and class method decrypt
# should work for lowercase, uppercase and numbers 0-9.
# Alphanumerics should be given back as they are
# Create layout.erb with the right title (Caesar Cipher) and an H1 with the same content
# Have an encrypt and a decrypt form at /
# Allow each to post to their own /encrypt OR /decrypt routes
# Create a page that tells you what was given and what that message encrypts/dectrypts to
# Include a link on the page to go back to the root
# Create config.ru
# Check that all tests pass
# Add rackup
# Show that it works locally (bundle exec rackup config.ru)
# Commit everything to git
# Create a new app on heroku
# Push the app to heroku
# YOU"RE DONE!!!
