class Mammal
	attr_accessor :alive, :health
	def initialize
		@alive = true
		puts 'I am alive!'
		self
	end
	def breathe  
		puts 'Inhale and exhale' 
		self
	end
	def DisplayHealth
		puts "Health is: #{@health}"
		self
	end

end