# Variables
# Local Variable
# Defined in a method. Begins with a lowercase letter or _.
#
# Instance Variable
# Begins with @ and has a default value of nil.
#
# Class Variable
# Begins with @@ and must be initialized before being used in methods. Class variables are rarely used.
#
# Global Variable
# Begins with $ and has a default value of nil. Avoid using this, if possible, since it is available everywhere.

class CodingDojo
  @@no_of_branches = 0
  def initialize(id, name, address)
    @branch_id = id
    @branch_name = name
    @branch_address = address
    @@no_of_branches += 1
    puts "\nCreated branch #{@@no_of_branches}"
  end
  def hello
    puts "Hello CodingDojo!"
  end
  def displayAll
    puts "Branch ID: %d" % @branch_id
    puts "Branch Name: %s" % @branch_name
    puts "Branch Address: %s" % @branch_address
  end
end
# now using above class to create objects
branch = CodingDojo.new(253, "SF CodingDojo", "Sunnyvale CA")
branch.displayAll
branch2 = CodingDojo.new(155, "Boston CodingDojo", "Boston MA")
branch2.displayAll



# Private/Protected
# By default, all methods in Ruby classes are public - accessible by anyone. To create private or protected method, you can do the following:

class Heart
  def public_method
  end
  protected # all methods that follow will be protected methods
  def protected_method
  end
  def protected_method2
  end
  private # all methods that follow will be made private: not accessible for outside objects
  def private_method
  end
  def private_method2
  end
end
