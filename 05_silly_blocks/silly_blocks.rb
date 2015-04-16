# def reverser(string)
# 	string.reverse!
# end

# def adder1(num)
# 	result=num+1
# end

# def adder3(num)
# 	result=num+3
# end

# def repeater(n)
# 	result=
# end 

def reverser
	yield.split.each{|word| word.reverse!}.join(" ")
end

def adder(x=1)
	yield + x
end

def repeater(count=1, &block)
	count.times do
		yield
	end
end