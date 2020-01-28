require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/team.rb')
also_reload('../models/*')

get '/teams' do # index
    @teams = Team.all()
    erb(:"teams/index")
end

get '/teams/new' do # new
    erb(:"teams/new")
end

get '/teams/:id' do # show
    @team = Team.find(params[:id])
    erb(:"teams/show")
end
  
post '/teams' do # create
    @team = Team.new(params)
    @team.save()
    redirect to '/teams'
end
 
get '/teams/:id/edit' do # edit
    @team = Team.find(params[:id])
    erb(:"teams/edit")
end
  
post '/teams/:id' do # update
    Team.new(params).update
    redirect to '/teams'
end
  
post '/teams/:id/delete' do # delete
    team = Team.find(params[:id])
    team.delete()
    redirect to '/teams'
end

get '/league_table' do
    @teams = Team.sort_for_league_table()
    erb(:"league_table/index")
end