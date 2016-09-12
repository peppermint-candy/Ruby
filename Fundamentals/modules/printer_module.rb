# Modules are very similar to classes; modules is a superclass of a class

module Printer
  def print_each_element
    for i in 0...self.length
      puts self[i]
    end
  end
end
