module Debug
	def who_am_i?
		puts "#{self.class.name} (id: #{object_id}) #{self.name}"
	end
end
class Phonograph
	include Debug
	attr_reader :name
	def initialize(name)
		@name = name
	end
end

ph = Phonograph.new("This is random")
ph.who_am_i?