ENV['RACK_ENV'] = 'test'

require './config/boot'

require 'minitest/autorun'
require 'minitest/pride'
require 'rack/test'

include Rack::Test::Methods

def app() Application end
