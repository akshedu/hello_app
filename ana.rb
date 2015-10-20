line_count = 0
text = ''
File.open("oliver.txt").each do |line| 
	line_count += 1
	text << line
end

total_chr = text.length

total_nonspace_chr = text.gsub(/\s+/,'').length

#total_words = text.scan(/\w+/).length

total_words = text.split.length

total_sentence = text.scan(/\.|\?|!/).length

total_paragraph = text.scan(/\n\n/).length


puts total_paragraph
puts total_sentence
puts total_words
puts total_nonspace_chr
puts total_chr
puts line_count

puts total_sentence/total_paragraph
puts total_words/total_sentence

stopwords = %w{the a by on for of are with just but and to the my I has some in}


