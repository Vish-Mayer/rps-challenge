require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  enable :sessions 
  get '/' do
    erb :index 
  end 

  post '/name' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do 
    @player_1_name = session[:player_1_name]
    @hand = session[:hand]
    erb :play
  end

  post '/play' do
    session[:hand] = params[:hand]
    redirect '/play'
  end

  run! if app_file == $0
end