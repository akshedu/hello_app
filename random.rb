class Bowlderize
	def initialize(string)
		@value = string.gsub(/[aeiou]/, "*")
	end
	def +(other)
		Bowlderize.new(self.to_s + other.to_s)
	end
	def to_s
		@value
	end
end

mybow = Bowlderize.new("damn ") + "fuck"
puts mybow.to_s