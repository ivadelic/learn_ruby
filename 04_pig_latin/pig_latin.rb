VOWELS = %w[a e i o u]

# "eat" => "eatay"
# "een" => "eenquay"
# "the fox like socks" => "ethay oxfay ikelay ockssay"

def tokenize(string)
	string.split(" ")
end

def vowel?(char)
	VOWELS.include?(char)
end

def is_qu?(chars)
	chars[0,2] == ['q', 'u']
end

def translate_word(word)
	chars = word.chars
	until vowel?(chars.first)
		chars.rotate!(1) if is_qu?(chars)
		chars.rotate!(1)
	end
	"#{chars.join}ay"
end

def translate(sentence)
	result = tokenize(sentence).map do |word|
		translate_word(word)
	end
	result.join(" ")
end