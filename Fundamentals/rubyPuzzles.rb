a = [3,5,1,2,7,9,8,13,25,32]
sum = 0
a.each {|i| sum += i  }
puts "question one result is ", sum

# also

puts a.reduce(:+)

print "sub question one answer is " , a.find_all { |i| i > 10}


b = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]

puts b.shuffle.to_s
print b.find_all  { |i| i.length > 5}

c = ("a".."z").to_a
shuffle_c = c.shuffle
puts "here's the shuffle a-z array" , shuffle_c
puts "here's the last letter of the shuffle", shuffle_c.last
puts "the first letter is a vowel! #{shuffle_c.first}" if  shuffle_c.first =~ /[aeiou]/


d = Array.new(10) {|i| i = rand(55..100)}
puts d

puts "sort is ", d.sort
puts "min is ", d.min
puts "max is ", d.max


# question 5
def randStr()
	return ((1..5).map {(65+rand(26)).chr}).join()
end

arr = 10.times.map { 5.times.map { (65+rand(26)).chr }.join }
puts "10 random strings that is 5 characters long: #{arr}"

puts (0..9).map { (0..4).map { (65+rand(26)).chr } .join("") }
