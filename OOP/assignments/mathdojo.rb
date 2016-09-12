class MathDojo

  attr_accessor :num
  def initialize
    @num = 0
    self

  end

  def add(add1, add2)
    @num += add1+add2
    self
  end

  def subtract(sub1,sub2)
    @num -= sub1+sub2
    self
  end

  def result
    puts @num
  end

end


# check = MathDojo.new.add(2,5).subtract(3,1).result


class MathDojoArr

  attr_accessor :num
  def initialize
    @num = 0
    self

  end

  def add(add1 = [], add2 = [])
    @num += add1.reduce(:+) + add2.reduce(:+)
    self
  end

  def subtract(sub1 = [],sub2 = [])
    @num -= sub1.reduce(:+)+sub2.reduce(:+)
    self
  end

  def result
    puts @num
  end

end


checkArr = MathDojoArr.new.add([1,2,3],[1,2,3]).subtract([2,2],[1]).result
