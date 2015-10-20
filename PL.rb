class ProjectList
	def initialize
		@projects = []
	end
	def projects=(list)
		@projects = list.map(&:upcase)
	end
	def [](offset)
		@projects[offset]
	end
end

mylist = ProjectList.new
mylist.projects="This is my proekcts list for the coybdab".split(" ")
puts mylist[3]
puts mylist[4]
