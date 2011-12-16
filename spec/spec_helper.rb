ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', 'config', 'boot.rb')

require 'capybara/rspec'

Capybara.app = Application

RSpec.configure do |config|
  config.include Rack::Test::Methods

  config.color_enabled = true
  config.formatter = :progress

  def app
    @app ||= Application
  end
end

