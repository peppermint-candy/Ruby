i = 0
num = 5
while i < num do
  puts "Inside the loop i = #{i}"
  i += 1
end


# another way
i = 0
num = 5
begin
  puts "Inside the loop i = #{i}"
  i += 1
end while i<num


for i in 0..5
  puts "Value of local variable is #{i}"
end

# break = terminates the most internal loop
# next= jupms to the next iteration
# redo = restarts the iteration of the most internal loop
