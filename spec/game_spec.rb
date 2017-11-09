require_relative '../lib/game.rb'

describe Game do
  let(:player1) { double('player1')}
  let(:player2) { double('player2')}

  subject(:game) { described_class.new(player1, player2) }

  it 'should accept two players as arguments' do
    expect(subject.player1).to eq(player1)
    expect(subject.player2).to eq(player2)
  end
end
