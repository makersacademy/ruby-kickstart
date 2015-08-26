#Don't forget that since you have a different gemset now, you need to run bundle before you do rackup config.ru

require File.dirname(__FILE__) + "/main"
run Sinatra::Application
