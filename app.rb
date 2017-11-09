require 'sinatra/base'
require './lib/player.rb'

class Battle < Sinatra::Base
  set :port, 5000
  enable :sessions

  get '/' do
    session[:hp1] = 100
    session[:hp2] = 100
    erb :index

  end

  post '/names' do
    # session[:player1] = params[:player1]
    # session[:player2] = params[:player2]
    $player1 = params[:player1]
    $player2 = params[:player2]
    redirect '/play'
  end

  get '/play' do
    @player1 = $player1
    @player2 = $player2

    erb :play
  end

  post '/attack_player_2' do
    session[:hp2] -= 10
    redirect '/play'
  end

end
