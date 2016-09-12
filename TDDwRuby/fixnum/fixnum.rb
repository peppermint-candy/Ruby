class Fixnum
  def my_upto(num)
    for i in (self..num)
      yield i
    end
  end

  def my_times
    for i in (1..self)
      yield i
    end
  end
end

1.my_upto(6) do |i|
  puts i*i
end

outputs = []
5.my_times { outputs  << "hi"}
print outputs
