def matchfreq(sentence, word)
	arr = sentence.scan(/the/i)
	puts arr.length
end
matchfreq("This is the used for the 15th time", "the")
