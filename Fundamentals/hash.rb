x = {"first_name" => "Coding", "last_name" => "Dojo", "joker" => "to be delete"}
y = {:first_name => "the dojo"}
puts x.keys
puts y.keys

x.delete("joker")
puts x.keys
puts x.empty?
puts x.has_key?("first_name")
puts x.has_value?("Coding")
