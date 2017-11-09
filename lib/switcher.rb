class Switcher

  attr_reader :whose_turn

  def initialize
    @whose_turn = :player1
  end

  def who_to_attack
    @whose_turn == :player1 ? :player2 : :player1
  end

  def change_turn
    @whose_turn == :player1 ? @whose_turn = :player2 : @whose_turn = :player1
  end
end
