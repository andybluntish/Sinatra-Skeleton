require_relative 'spec_helper'

describe "Application" do
  it "should render the Home Page" do
    get '/'
    last_response.status.must_equal 200
  end

  it "should render SCSS into CSS" do
    get '/css/application.css'
    last_response.status.must_equal 200
  end

  it "should render CoffeeScript into JavaScript" do
    get '/js/application.js'
    last_response.status.must_equal 200
  end
end
