require "sinatra"

# register template extension
Tilt.register Tilt::ERBTemplate, "html.erb"

class TestCase < Sinatra::Base

  configure :development do
    require "better_errors"
    use BetterErrors::Middleware
  end

  get "/" do
    erb :index
  end

end
