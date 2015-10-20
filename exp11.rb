str = "Cat is running, Cat is purring"
new_str = str.gsub(/Cat/,"Dog")
puts new_str

name = "Falts Water??"
puts name =~ /a/

random = /\?/.match(name)

puts random.pre_match 
puts random.post_match


