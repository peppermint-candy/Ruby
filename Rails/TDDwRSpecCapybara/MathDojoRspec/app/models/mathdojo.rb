class Mathdojo < ActiveRecord::Base
    attr_accessor :result
  def initialize
   @result = 0
  end

  def add *numbers
   @result += numbers.flatten.inject(:+)
   return self
  end

  def subtract *numbers
   @result -= numbers.flatten.inject(:+)
   return self
  end

  def multiply_by_the_sum *numbers
    @result += numbers.flatten.inject(:+)

    return self


  end

  def resets *numbers
    @result = 1
    return self
  end

end
