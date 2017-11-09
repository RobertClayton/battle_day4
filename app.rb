require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base
  set :port, 5000
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $hp1 = Game.new
    $hp2 = Game.new
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect '/play'
  end

  get '/play' do
    @player1 = $player1.name
    @player2 = $player2.name
    @hp1 = $hp1.hp
    @hp2 = $hp2.hp
    erb :play
  end

  post '/attack_player_2' do
    $hp2.attack
    redirect '/play'
  end

end
