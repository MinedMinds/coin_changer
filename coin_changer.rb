def generate_change(cents)
	change = {}
	if cents >= 10
		change[:dime] = 1
		cents = cents - 10
	end
	if cents >= 5
		change[:nickel] = 1
		cents = cents - 5
	end
	if cents > 0
		change[:penny] = cents
	end
	change
end