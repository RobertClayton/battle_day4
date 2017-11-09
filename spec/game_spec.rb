require_relative '../lib/game.rb'

describe Game do
  subject(:game) { described_class.new }
  it 'should set up a new game with 100 hp' do
    expect(game.hp).to eq 100
  end

  it 'should -10 off hp' do
    game.attack
    expect(game.hp).to eq 90
  end
end
