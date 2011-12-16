class Application < Sinatra::Base
  register Sinatra::SimpleNavigation

  # Config
  configure do
    APP_CONFIG = {
      site_owner: "Site Owner",
      site_title: "SinatraApp",
      site_description: "Skeleton Sinatra application."
    }
  end

  # Helpers
  helpers do

    # Site title
    def title
      @title = nil if !@title or @title == ''
      [APP_CONFIG[:site_title], @title].compact.join(' | ')
    end

  end



  ##
  # Route Handlers
  ##

  # Home
  get '/' do
    erb :home
  end





  ##
  # Asset Handlers
  ##

  # Styles
  get '/css/application.css' do
    scss :'scss/application', style: :expanded
  end

  # JavaScript
  get '/js/application.js' do
    coffee :'coffee/application'
  end

end

