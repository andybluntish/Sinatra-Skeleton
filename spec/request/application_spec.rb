require 'spec_helper'

describe Application, type: :request do

  describe "GET '/'" do
    it "should be successful" do
      get '/'
      last_response.should be_ok
    end

    it "should say hello" do
      visit '/'
      page.should have_content "Hello world"
    end
  end

end

