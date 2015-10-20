def stock_picker(array)
	len = array.length
	max = [0]
	array.each_index do |i|
		for j in (i+1)..(len-1)
			temp = array[j] - array[i]
			if temp > max[0]
				max[0] = temp
				max[1] = j
				max[2] = i
			end
		end
	end
		if max[0] == 0 then 
			puts "You did not make any profit!"
		else	
			puts max[0]
			puts "[#{max[2]}, #{max[1]}]"	
		end
end

stock_picker([5,4,3,2,1])