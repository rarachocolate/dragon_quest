require './character.rb'

class Brave < Character
  def attack(enemy_hp)
    puts "#{name} の攻撃！"
    yield
    super
  end
end