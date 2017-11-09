require_relative '../lib/player.rb'

describe Player do
  it 'should return its name' do
    sign_in_and_play
    expect(@player1).to eq('Marco')
  end
end
