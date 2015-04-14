def echo(x)
  x
end

def shout(x)
  x.upcase
end

def repeat(x,y=2)
	([x]*y).join ' '
end

def start_of_word(word, x)
	word.split(//)[0,x].join
end

def first_word(sentence)
	sentence.split[0]
end


LITTLE_WORDS = %w(and in the of a an over)

def titleize(title)
	words = title.split

	
	capitalized_words = words.map.with_index do |word, index|
		first_word  = index == 0
		little_word = LITTLE_WORDS.include?(word)
		
		# Make it big if....
		if first_word or not little_word 
			word.capitalize
		else
			word
		end
	end

	# title.split.map(&:capitalize).join(' ')
	capitalized_words.join ' '
end


# Dog = Class.new {
# 	def bark
# 		"woof"
# 	end
# }

# p Dog.new.bark

