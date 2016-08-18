def generate_change(cents)
	if cents == 0
		{}
	else
		{:penny => cents}
	end
end