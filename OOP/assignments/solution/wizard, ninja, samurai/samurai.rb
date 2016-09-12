require_relative 'human'
class Samurai < Human
	@samurai_counter = 0

	class << self
		attr_accessor :samurai_counter
	end

	def initialize
		@health = 200
		self.class.samurai_counter += 1
	end

	def death_blow(obj)
		attack(obj)
		obj.health = 0
	end

	def meditate
		@health = 200
	end

	def how_many
		puts "There are #{self.class.samurai_counter} samurais"
	end
end

batusai = Samurai.new
batusai.how_many