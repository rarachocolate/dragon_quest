require './monster.rb'
require './brave.rb'

a = Brave.new(name: "勇者")

b = Monster.new(name: "ヴァンパイア")

def battle(brave:, monster:)
  brave_hp = brave.hp
  monster_hp = monster.hp

  puts "#{monster.name}があらわれた"

  while true
    monster_hp = brave.attack(monster_hp){puts "#{monster.name}に#{brave.offense}のダメージを与えた"}

    unless monster_hp <= 0
      brave_hp = monster.attack(brave_hp){puts "#{brave.name}は#{monster.offense}のダメージを受けた"}
    else
      monster_hp = 0
    end

    brave_hp = 0 if brave_hp <= 0

    puts <<~TEXT
    *=*=*=*=*=*=*=*=*=*=*
    【#{brave.name}】HP: #{brave_hp}
    【#{monster.name}】HP: #{monster_hp}
    *=*=*=*=*=*=*=*=*=*=*
    TEXT

    break if monster_hp == 0 || brave_hp == 0
    
  end

  puts "#{brave.name}はしんでしまった!" if brave_hp == 0
  puts "#{monster.name}をやっつけた" if monster_hp == 0
end

battle(brave: a, monster: b) 