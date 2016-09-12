require_relative "Human"

class Wizard < Human
  def initialize
    super
    @health =50
    @intelligence = 25
    self
  end

  def status
    super
  end

  def heal
    self.health += 10
  end

  def fireball(obj)
    if obj.class.ancestors.include?(Human)
      obj.health -= 20
      true
    else
      false
    end
  end
end

class Ninja < Human
  def initialize
    super
    @stealth = 175
    self
  end

  def status
    super
  end

  def get_away
    self.health -= 15
  end

  def steal(obj)
    if obj.class.ancestors.include?(Human)
      obj.health -= 10
      self.health += 10
      true
    else
      false
    end
  end
end

class Samurai < Human
  @many_samurai = 0

  class << self
    attr_accessor :many_samurai
  end

  def initialize
    super

    self.class.many_samurai += 1
    @health = 200
    self
  end

  def status
    super
    puts "There are #{self.class.many_samurai} samurai out there"
  end

  def meditate
    self.health = 200
  end

  def death_blow(obj)
    if obj.class.ancestors.include?(Human)
      obj.health = 0
      true
    else
      false
    end
  end
end



wiz = Wizard.new
wiz.status

sam = Samurai.new
sam.status

arai = Samurai.new
arai.status

sam.death_blow(arai)
wiz.heal
wiz.status
arai.status
