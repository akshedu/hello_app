class Palindrome
	def initialize()
		puts "Please enter the string to check"
		string = gets.chomp
		@string = string.downcase
	end
	def check
		if @string == @string.reverse then puts "The given string is a Palindrome"
		else
		puts "The given string is not a Palindrome"
		end
	end
end
myptest = Palindrome.new().check
