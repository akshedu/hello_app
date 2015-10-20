def caesar_cipher(string, shift)
	shift = shift%26
	shiftedstring = []
	string.each_byte do |i|
		case i
		when 65..90
			if i+shift<=90 then shiftedstring << (i+shift).chr
			else
				shiftedstring << (i+shift-26).chr
			end
		when 97..122
			if i+shift<=122 then shiftedstring << (i+shift).chr
			else
				shiftedstring << (i+shift-26).chr
			end
		else
			shiftedstring << i.chr
		end
	end
	puts shiftedstring.join("")
end

caesar_cipher("Z",7)




