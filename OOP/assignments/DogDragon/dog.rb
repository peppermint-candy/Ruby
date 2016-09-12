require_relative "Mammal"

class Dog < Mammal
  def pet
    @value += 5
    self
  end

  def walk
    @value -= 1
    self
  end

  def run
    @value -= 10
    self
  end

  def display_health
    puts @value
  end
end

rufy = Dog.new
rufy.walk.walk.walk.run.run.pet.display_health
