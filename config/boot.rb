# Default to 'development' environment
ENV['RACK_ENV'] ||= 'development'

# Setup bundler and require gems for the current environment
require 'rubygems'
require 'bundler'
Bundler.require(:default, ENV['RACK_ENV'].to_sym)

# Load the main application
require './application'

# Load any libraries in ./lib
Dir["./lib/**/*.rb"].each {|file| require file }
