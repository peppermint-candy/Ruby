#using .any? {|obj| block}
["ant", "bear","cat"].any? {|word| word.length >= 3 }

#using .each calls block once for each element in self, passing that element as a parameter

["ant", "bear","cat"].each {|word| print word, "--" }

#using .collect {|obj| block} -- array; returns a new array with the results of running block once for everyelement in enum

(1..4).collect {|i| i*i }

# .map {|obj| block} -- enumerator; return a new array with the results of running block once for every element in enum. it's exactly like .collect

# using .detect/ .find enumerato; returns the first for which block is not false
puts (1..10).detect { |i| i %5 == 0 and i % 7 == 0 }

puts (1..100).detect {|i| i %5 ==0 and i %7 == 0 }


#using .find_all or .select ; returns an array containing all elements of enum for which block is not false

puts (1..10).find_all { |i| i % 3 == 0 }

#using .reject {|obj| block} -- opposite of find_all

puts ".reject result", (1..10).reject {|i| i% 3 == 0}

#using .upto(limit) -- iterates block up to the int number

5.upto(10) { |i| print i, " " }

# using has_key?(key)

h = { "a" => 100, "b" => 200 }

puts h.has_key?("b")
puts h.has_key?("z")

puts h.has_value? (100)
print h.keys
