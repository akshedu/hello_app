def length_finder(input_array)
  final = []
  input_array.each do |str|
    final << str.length
  end
  final
end

puts length_finder(["What","is","your","name"])