class Character
  attr_reader :name, :hp, :offense, :defense 

  def initialize(name: "勇者", hp: 100, offense: 50, defense: 40)
    @name = name
    @hp = hp
    @offense = offense
    @defense = defense
  end

  def attack(enemy_hp)
    enemy_hp -= offense
  end
end