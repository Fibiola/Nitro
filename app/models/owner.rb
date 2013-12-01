class Owner
	# This creates a birthdate method which will output the date used to initialize the class
	attr_reader :birthdate

	def initialize(year, month, day)
		# This is taken from Ruby API - Date.new  method gets clock from the computer 
		# The numbers are parameters - year, month and day
		# This stores the date into the birthdate instance method so you can call it like a method
		@birthdate = Date.new(year, month, day)
	end

	def name
		'a penguin'
	end

	def today
		# We set today variable with today's date. It creates object that represents todays date from computer.
		Date.today
	end

	def birthday
		# This gives us the birthday this year
		Date.new(today.year, birthdate.month, birthdate.day)
	end

	def countdown
		# If birthday has already passed we apply a next year method to the birthday to calculate the count
		# This will take the result of the if / else conditional so you reduce duplication
		countdown = if birthday > today
			birthday - today
		else
			birthday.next_year - today
		end
		# Now we convert the date into an integer only once :) 
		countdown.to_i
	end
end