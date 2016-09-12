class MyEnumerable
  def my_each
    for i in self
      yield i
    end
  end

  # def my_select
  #   myselect = []
  #   for i in self
  #     myselect << yield
  #   end
  #   print myselect
  # end
  #
  # def my_reject
  #   for i in self
  #     yield i
  #   end
  # end
  #
  # def my_map
  #   for i in self
  #     yield i
  #   end
  # end
end

# class Array
#   include MyEnumerable
#
# end
#
arr = [1,2,3,4,5]
# string = ['hello']
output = []
#
arr.my_each do |i|
  output << i
end
#
# arr.my_select do |i|
#   if i > 2
#     i
#   end
# end
