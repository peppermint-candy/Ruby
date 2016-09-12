class Human

  attr_accessor :strength, :stealth, :intelligence, :health

  def initialize

    @strength = 3
    @stealth = 3
    @intelligence =3
    @health = 100
    self
  end

  def attack(obj)
    puts "Attacking mode!"
    if obj.class.ancestors.include?(Human)
      obj.health -= 10
    else
      "Failed to attack, maybe use your intelligence?"
    end
  end

  def check
    puts self.class.ancestors
  end

  def status
    puts "Current status \n strength: #{@strength} \n stealth: #{@stealth} \n intelligence: #{@intelligence} \n health: #{@health} "
  end

end

# danny = Human.new
# danny.check
# danny.status
