class Calculator
	def inputuser
		print "Please enter 1st number: "
		@a = Integer(gets.chomp)
	rescue nil	
		print "Please enter 2nd number: "
		@b = Integer(gets.chomp)
	rescue nil
	end
	def choice
		print "Do you want to add or subtract (add/sub): "
		input = gets.chomp
		case input.downcase 
		when "add" 
			puts "The sum is #{@a+@b}"
		when "sub"
			puts "The difference is #{@a-@b}"
		else
			puts "Please enter a valid input"
			choice
		end
	end
end

clc = Calculator.new
clc.inputuser
clc.choice


