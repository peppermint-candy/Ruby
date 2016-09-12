require_relative "solar_system"

RSpec.describe Planet do

  it 'has a name, description, and population'do
    @planet = Planet.new("Earth","178 Billions","Blue and Green")
    expect(@planet.name).to eq("Earth")
    expect(@planet.description).to eq("178 Billions")
    expect(@planet.population).to eq("Blue and Green")
  end
end

RSpec.describe SolarSystem do

  before do
    @solar = SolarSystem.new
  end

  it 'has a name which is optional and has "Milky Way as default"' do
    @newsolar = SolarSystem.new
    @newsolar_ = SolarSystem.new("Crab")
  expect(@newsolar.name).to eq("Milky Way")
  expect(@newsolar_.name).to eq("Crab")
  end

  it 'contains a list of all planets in it' do
    @solar.planets = ["Mars","Moon"]
    expect(@solar.display_planets).to eq(["Mars","Moon"])
  end

  it 'has a method to counts total number of planets in the solar system' do
    @solar.planets = ["Mars","Moon","Earth"]
    expect(@solar.how_many_planets).to eq(3)
  end

  it 'has a method that add new planet with Planet class to the solar system' do
    @mars = Planet.new("Mars","zero","Always windy here")
    expect(@mars.class.ancestors.include?(Planet)).to be true
    expect(@solar.add_planets(@mars)).to eq(@solar)
  end

  it 'has a method that wipe out all the planets in the solar system' do
    expect(@solar.super_nova).to eq(0)
  end


end
