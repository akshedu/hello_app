def bubble_sort(array)
	flag = false
	len = array.length
	while flag == false
		for i in 0..len-2
			if array[i] > array[i+1]
				array[i], array[i+1] = array[i+1], array[i]
				flag = false
			else
				flag = true
			end
		end
	end
	puts array
end

bubble_sort([2,5,3,8,5,6,10])

