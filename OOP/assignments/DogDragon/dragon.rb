require_relative "Mammal"

class Dragon < Mammal
  def initialize
    @value = 170
    self
  end

  def fly
    @value -= 10
    self
  end

  def attack_town
    @value -=50
    self
  end

  def eat_humans
    @value += 20
    self
  end

  def display_health
    puts "This is a dragon!"
    super
  end
end

raegar = Dragon.new
raegar.attack_town.attack_town.attack_town.eat_humans.eat_humans.fly.fly.display_health
