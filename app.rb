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
    $game = Game.new(Player.new(params[:player1]), Player.new(params[:player2]))

    redirect '/play'
  end

  get '/play' do
    @player1 = $game.players[:player1].name
    @player2 = $game.players[:player2].name
    @hp1 = $game.players[:player1].hp
    @hp2 = $game.players[:player2].hp
    @whose_turn = $game.players[$game.switcher.whose_turn].name
    erb :play
  end

  post '/attack' do
    $game.attack
    redirect '/switch'
  end

  get '/switch' do
    $game.switcher.change_turn
    redirect '/play'
  end
end
