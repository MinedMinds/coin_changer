def generate_change(cents)
	change = {}
	quarter = 25
	dime = 10
	nickel = 5
	if cents >= quarter
		coins = cents / quarter
		change[:quarter] = coins
		cents = cents - (quarter * coins)
	end
	if cents >= dime
		coins = cents / dime
		change[:dime] = coins
		cents = cents - (dime * coins)
	end
	if cents >= nickel
		change[:nickel] = 1
		cents = cents - nickel
	end
	if cents > 0
		change[:penny] = cents
	end
	change
end