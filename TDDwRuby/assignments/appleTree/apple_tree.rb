
class AppleTree

  attr_accessor :height , :age, :number_of_apples

  def initialize
    @height = 8
    @age = 5
    @number_of_apples = 0
  end

  def how_many_apples
    @number_of_apples
  end

  def year_gone_by(years)
    if self.age > 3 and self.age < 10
      self.number_of_apples + (years * 30)
    elsif self.age > 10

    else
    end
    
    self.number_of_apples

    self.age += years
    self.height -= years
    self.height
    self.age
  end

  def pick_apple
    @number_of_apples = 0
  end
end

my_apple = AppleTree.new
puts my_apple.how_many_apples
puts my_apple.year_gone_by(2)
