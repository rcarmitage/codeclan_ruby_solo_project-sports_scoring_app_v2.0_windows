require('sinatra')
# require('sinatra/contrib/all')
require_relative('controllers/fixtures_controller.rb')
require_relative('controllers/teams_controller.rb')

get '/' do
    erb(:index)
end

get '/about' do # about index
    erb(:"/about")
end