class Vehicle
	def initialize(year,make,model)
		@year = year
		@make = make
		@model = model
	end

	def year
		@year
	end

	def make
		@make
	end

	def model
		@model
	end

end

def display_menu
	system "clear"
	puts "*************************************************"
	puts "****  Welcome to the Car Rental Application  ****"
	puts "*************************************************"
	puts "****  Please select from the following menu: ****"
	puts "**** 1. Option 1"
	puts "**** 2. Option 2"
	puts "**** 3. Option 3"
	puts "**** 4. Option 4"

	option = gets.chomp.to_i

	case option
	when 1
		puts "1"
	when 2
		puts "2"
	when 3
		puts "3"
	when 4
		puts "4"
	else
		puts "Wrong option."
	end

end

# display_menu

my_awesome_car = Vehicle.new(2016,"Honda","Accord")

puts "Hi, I have an #{my_awesome_car.model} and its year is #{my_awesome_car.year}."

puts my_awesome_car.year
