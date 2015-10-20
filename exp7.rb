def test
	yield 67
	puts "You are in the method"
	yield 32
end
test {|i| puts "You are in block #{i}"}