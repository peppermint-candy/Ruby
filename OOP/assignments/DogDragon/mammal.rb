class Mammal

  attr_accessor :value
  def initialize
    @value = 150
    self
  end

  def display_health
    puts @value
    self
  end
end
