# Default to 'development' environment
ENV['RACK_ENV'] ||= 'development'


# Setup bundler and require gems for the current environment
require 'bundler'
Bundler.require(:default, ENV['RACK_ENV'].to_sym)

# Hack to fix Simple Navigation
Sinatra::Application.root = File.expand_path "../../", __FILE__

# Load the main application
require './application'

# Load any libraries in ./lib
Dir['./lib/**/*.rb'].each do |file|
  require file
end

