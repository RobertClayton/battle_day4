class Game
DEFAULT_HP = 100

attr_reader :hp

def initialize(hp = DEFAULT_HP)
  @hp = hp
end

  def attack
    @hp -= 10
  end
end
