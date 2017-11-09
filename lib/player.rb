class Player
  DEFAULT_HP = 100
  attr_accessor :hp
  attr_reader :name

  def initialize(name)
    @name = name
    @hp = DEFAULT_HP
  end

  def reduce_health
    @hp -= 10
  end
end
