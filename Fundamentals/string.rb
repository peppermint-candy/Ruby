x = "coding dojo"
puts x.length
puts x.class
puts x.capitalize

puts x.downcase
puts x.upcase
puts x[2]
puts x.include?("dojo")
puts x.include?("Codi")

puts "This sentence has a word 'dojo'" if x.include? "Codi"
puts "This sentence has a word 'dojo'" if x.include? "dojo"

y = "John, Charles, Matt, Cliff"

puts y.split(',')
puts y.split(",")

z = ""

puts "z is empty" if z.empty?

String.new("I am an instance of the String class")

"Ai".class
puts "Ai".class

puts String.ancestors
puts String.instance_methods
puts String.methods
