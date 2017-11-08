require 'sinatra/base'

class Battle < Sinatra::Base  #?Sinatra::Application?
  #set :sessions, true
  #set :foo, 'bar'

  get '/' do
    erb :index
  end

 post '/names' do
   @player1 = params[:player1]
   @player2 = params[:player2]
   erb :play
 end

end
