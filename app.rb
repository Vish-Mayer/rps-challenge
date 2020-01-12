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
    @computer_hand = session[:computer_hand]
    erb :play
  end

  post '/play' do
    session[:hand] = params[:hand]
    session[:computer_hand] = :Rock 
    redirect '/play'
  end

  run! if app_file == $0
end