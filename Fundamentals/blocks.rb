def test
  puts "You are in the method"
  yield
  puts "You are again back to the method"
  yield
end
test { puts "Your are in the block"}

def a_test
  yield(5)
  puts "You are in the method a_test"
  yield(100)
end
a_test {|i| puts "You are in the block #{i}"}

def square(num)
  puts "num is #{num}"
  puts "yield(num) has a value of #{yield(num)}"
end
square(5) do |i|
  i * i
end

def a_square(num)
  puts "num is #{num}"

  x = yield (num)
  puts "x has a value of #{x}"

  y = yield (num)*x
  puts "y has a value of #{y}"
end

square(5) { |i| i*i }
