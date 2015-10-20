values = [1, 2, 3, 4]
def each(values)
values.each do |v|
yield v
end
end
mymethod(values).inject(:+)
