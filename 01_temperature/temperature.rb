def ctof(degrees_c)
	((degrees_c.to_f*1.8)+32).round(1)
end


def ftoc(degrees_f)
	#do calc on degrees and return celsius
	((degrees_f.to_f - 32)/1.8).round(1)
end