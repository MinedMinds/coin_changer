def generate_change(cents)
	change = {}
	if cents > 5
		change[:nickel] = 1
		change[:penny] = cents - 5
	elsif cents == 5
		change[:nickel] = 1
	elsif cents > 0
		change[:penny] = cents
	end
	change
end