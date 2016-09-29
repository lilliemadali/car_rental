require_relative "person"
require_relative "vehicle"

@parking_lot = []
@message = ""
@customers = []

def display_menu clear_menu
	if clear_menu == "YES"
		system "clear"
	end
	puts "*************************************************"
	puts "****  Welcome to the Car Rental Application  ****"
	puts "*************************************************"
	puts "****  Please select from the following menu: ****"
	puts "**** 1. Add a Vehicle"
	puts "**** 2. Print Vehicles"
	puts "**** 3. Add a Customer"
	puts "**** 4. Print Customer"
	puts "**** 5. Exit Application"

	status_message(@message)
	@message = ""
	option = gets.chomp.to_i

	case option
	when 1
		add_a_vehicle
	when 2
		print_vehicles
	when 3
		add_a_customer
	when 4
		print_customers
	when 5
		exit_application
	else
		puts "Wrong option."
		display_menu
	end
end

def add_a_vehicle
	puts "What year was your vehicle made?"
	year = gets.chomp
	puts "What make of vehicle do you have?"
	make = gets.chomp
	puts "What model is your vehicle?"
	model = gets.chomp

	vehicle = Vehicle.new(year,make,model)
	
	@parking_lot.push(vehicle)

	@message = "Added a vehicle"

	display_menu("YES")
end

def add_a_customer
	puts "What is your name?"
	name = gets.chomp
	puts "What is your age?"
	age = gets.chomp
	puts "What is your hometown?"
	hometown = gets.chomp

	person = Person.new(name,age,hometown)
	
	customer.push(person)

	@message = "Added a customer"

	display_menu("YES")
end

def exit_application
	puts "*************************************************"
	puts "******************Bye Bye************************"
	puts "*************************************************"
end

def status_message message
	puts "*************************************************"
	puts "********************* #{message} **********************"
	puts "*************************************************"
end 

def print_vehicles
	puts "The vehicles on your lot are:"
	@parking_lot.each do |cars|
		puts "#{car.year} #{car.make} #{car.model}"
	end
	display_menu("NO")
end

def print_customers
	puts "Your customers are:"
	@customers.each do |customer|
		puts "#{customer.name} #{customer.age} #{customer.hometown}"
	end
	display_menu("NO")
end

display_menu("YES")