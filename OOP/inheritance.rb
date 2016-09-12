class ParentClass
    def a_method
      puts 'b'
    end
  end
  class SomeClass < ParentClass  # < means inherit (or "extends" if you are from Java background)
    def another_method
      puts 'a'
    end
  end
  instance = SomeClass.new
  instance.another_method # => "a"
  instance.a_method       # => "b"


  class Mammal
  def initialize
    puts 'I am alive!'
  end
  def breathe
    puts 'Inhale and exhale'
  end
end

class Cat < Mammal #inherits from the Mammal class
  def jerk
    puts 'scratching you...'
  end
  def speak
    puts "Meow"
  end
end
chloe = Cat.new #creates new class called Cat, 'I am alive!' should print on the screen
chloe.jerk # prints 'scratching you' on the screen
chloe.speak # prints 'Meow'
chloe.breathe # can access the Mammal methods as well, prints 'Inhale and exhale'



# -----------------SELF------------------------

class Cat < Mammal
  def jerk
    puts 'scratching you...'
  end
  def speak
    puts "Meow"
  end
  def who_am_i
    puts self
  end
end
chloe = Cat.new
chloe.who_am_i #prints the cat object


class Cat < Mammal
  def jerk
    puts 'scratching you...'
    return self
  end
  def speak
    puts "Meow"
    return self
  end
  def who_am_i
    puts self
    return self
  end
end
chloe = Cat.new
chloe.speak.who_am_i.jerk


class Cat < Mammal
  def jerk
    puts 'scratching you...'
    self
  end
  def speak
    puts "Meow"
    self
  end
  def who_am_i
    puts self
    self
  end
end
chloe = Cat.new
chloe.speak.who_am_i.jerk
