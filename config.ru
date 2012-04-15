require File.join(File.dirname(__FILE__), 'config', 'boot.rb')

use Rack::Session::Cookie
use Rack::Csrf

run Application
