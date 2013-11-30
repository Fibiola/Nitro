class Owner

	def name 
		name = 'Foobar Kadigan'
	end

	def birthdate
		# This is taken from Ruby API - Date.new  method gets clock from the computer 
		# The numbers are parameters - year, month and day
		birthdate = Date.new(1990, 12, 22)
	end

	def countdown
		# We set today variable with today's date. It creates object that represents todays date from computer.
		today = Date.today
		# We create new variable that combines todays year with brithday dates
		# This gives us his birthday this year
		birthday = Date.new(today.year, birthdate.month, birthdate.day)
		# If birthday has already passed we apply a next year method to the birthday to calcualate the count
		if birthday > today
			countdown = (birthday - today).to_i
		else
			countdown = (birthday.next_year - today).to_i
		end
	end
end