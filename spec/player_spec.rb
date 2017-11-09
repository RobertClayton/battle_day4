require_relative '../lib/player.rb'

describe Player do
  subject(:player) { described_class.new('Andrew') }
  it 'should return its name' do
    expect(player.name).to eq('Andrew')
  end

  it 'should have a default HP of 100' do
    expect(player.hp).to eq 100
  end

  describe '#reduce_health' do
    it 'should reduce hp by 10' do
      player.reduce_health
      expect(player.hp).to eq 90
    end
  end
end
