require_relative '../lib/player.rb'

describe Player do
  subject(:player) { described_class.new('Andrew') }
  it 'should return its name' do
    expect(player.name).to eq('Andrew')
  end
end
