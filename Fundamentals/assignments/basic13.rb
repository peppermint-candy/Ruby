#question 1 print 1-255
arr = (1..255).to_a
def printall(arr)
  puts arr
  return arr
end
# printall()


#question 2 print odd numbers between 1-255
def printodd()
    puts printall().find_all { |i| i % 2 != 0}
end
# printodd()

# question 3 print sum

def sum(arr)
  sum = 0
  arr.map {|i| puts "New number: #{i} sum: #{sum += i}"}
  return sum
end

# question 4 iterating through an Array
x = [1,3,5,7,9,13]
def loop(arr)
  arr.each {|i| puts i}
end

# question 5 find max
def findmax(arr)
  print arr.max
end

#question 6 get average
def findaverage(arr)
  y = (sum(arr))/arr.length
  print y
end

# question 7 array with odd numbers
def createArr()

  y = (1..255).to_a.find_all {|i| i % 2 != 0}
  print y

end

#question 8 greater than Y
def greaterY(arr,y)
  print arr.count { |i| i > y}
end


# question 9 square the values
def square (arr)
  puts arr.collect { |i| i*i}
end

# question 10 eliminate negative numbers
def noNeg(arr)
  i = 0
  while arr[i]
    if arr[i] < 0
      arr[i] = 0
    end
    i += 1
  end
  puts arr
end



# question 11 max min and average

def mma(arr)
  puts "maximum number is ", arr.max
  puts "mininum number is ", arr.min
  puts "average number is " , arr.reduce(:+)/arr.length
end

#question 12 shifting the values in the array
def shiftarr(arr)
  temp = arr[0]
  arr.shift
  arr.push(temp)
  puts arr
end

#question 13 number to string
def numTostr(arr)
  i = 0
  while arr[i]
    if arr[i] < 0
      arr[i] = "Dojo"
    end
    i += 1
  end
  puts arr
end
