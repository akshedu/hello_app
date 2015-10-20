class Palindrome
	def initialize(string)
		@string = string.downcase
		end
		def check
			if string == string.reverse then puts "The given string is a Palindrome"
				else
					puts "The given string is not a Palindrome"
				end
			end
		end

myptest = Palindrome.new("ABCBA")