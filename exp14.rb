name = "Shalmali"
File.open("output.txt", "w") do |file|
file.puts "Hello"
file.puts name
end
puts File.read("output.txt")