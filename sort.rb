def sort_string(string)
  arr = string.split(/\s/).sort {|a, b| a.length <=> b.length}
  return arr
end

sort_string("Awesome I am")