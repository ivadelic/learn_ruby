Alpha = ('a'..'z').to_a
Vowel = %w[a e i o u]
Consonants = Alpha-Vowel
	
	# pig = word.split 

def translate(word)
	if Vowel.include?(word[0])  #begins with vowel
		word+"ay"
	else 
	end
end