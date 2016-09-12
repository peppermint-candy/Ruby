a = ["Matz", "Guido", "Dojo", "Choi", "John"]
b = [5,6,7,8,1,2,3,9,7]
c = ["Dojo", 9]

puts a[0]
puts a[1]
puts a+b

x = a+b

puts x.to_s

puts b.class
puts b.shuffle.join("-")
puts a.to_s

#using .at or .fetch
puts a.at(0)
#using .delete
c.delete(9)
puts c
#using .reverse
puts a.reverse
#using .length
puts b.length
#using .sort
puts b.sort
#using .slice
a.slice(2)
puts a
#using .shuffle
puts a.shuffle
#using .join

puts b.join("-")
#using .insert

a.insert("John")
puts a
#using values_at)()
puts a.values_at(1,3)
puts a.values_at(1,2,3).join(' and ')
