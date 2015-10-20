def random_select(array, n)
  final = []
  for i in 1..n do
  ind = rand(1..array.length)
    final << array[ind]
    end
    #return final
    puts final
end

random_select([1,2,3,4,5,6,7,7,8,88],2)

