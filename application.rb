class Application < Sinatra::Base

  ##
  # Route Handlers
  ##

  # Home
  get '/' do
    @title = "Sinatra App"
    @message = "Welcome, friend!"
    erb :home
  end



  ##
  # Asset Handlers
  ##

  # Styles
  get '/css/application.css' do
    scss :'scss/application'
  end

  # JavaScript
  get '/js/application.js' do
    coffee :'coffee/application'
  end
end
