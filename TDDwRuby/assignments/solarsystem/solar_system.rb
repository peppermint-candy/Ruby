class Planet

  attr_reader :name, :description, :population

  def initialize name,description,population
    @name = name
    @description = description
    @population = population
  end
end

class SolarSystem

  attr_reader :name, :planets
  attr_writer :planets

  def initialize name = "Milky Way"
    @name = name
    @planets = []
  end

  def display_planets
    return @planets
  end

  def how_many_planets
    return @planets.count
  end

  def add_planets(newplanet)
    if newplanet.class.ancestors.include?(Planet)
      @planets << newplanet
      self
    else
      false
    end
  end

  def super_nova
    @planets = []
    @planets.count
  end


end

mars = Planet.new("Mars","zero","windy")
a = Planet.new("Mars","zero","windy")
b = Planet.new("Mars","zero","windy")
c = Planet.new("Mars","zero","windy")

soli = SolarSystem.new
soli.add_planets(mars)
.add_planets(a)
.add_planets(b)
.add_planets(c)

puts mars.class.ancestors.include?(Planet)
