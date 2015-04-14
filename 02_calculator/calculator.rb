def add(x,y)
	x+y
end

def subtract(a,b)
	a-b
end

def sum(array)
	array.inject{|sum,a| sum+a}.to_i
end