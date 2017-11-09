require './lib/switcher.rb'

class Game
  attr_reader :switcher, :players#, :player1, :player2

  def initialize(player1, player2, switcher = Switcher.new)
    # @player1 = player1
    # @player2 = player2
    @players = Hash.new
    players[:player1] = player1
    players[:player2] = player2
    @switcher = switcher
  end

  def attack
    @players[@switcher.who_to_attack].reduce_health
  end
end
