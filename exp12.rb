def sides
	[1,2,3,4]
end
puts sides.class
puts sides.inject(0) {|sum, side| sum + side}
