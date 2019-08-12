require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

guest1 = Guest.new("Amy")
guest2 = Guest.new("Steven")
guest3 = Guest.new("Howard")
guest4 = Guest.new("Caryn")

listing1 = Listing.new("NYC")
listing2 = Listing.new("Boston")
listing3 = Listing.new("Newport")
listing4 = Listing.new("Nantucket")

trip1 = Trip.new(listing1, guest1)
trip2 = Trip.new(listing2, guest2)
trip3 = Trip.new(listing3, guest3)
trip4 = Trip.new(listing4, guest4)
trip5 = Trip.new(listing2, guest1)

bakery1 = Bakery.new("Bourke Street Bakery", "NYC")
bakery2 = Bakery.new("Seven Grams Cafe", "NYC")

dessert1 = Dessert.new("Chocolat Chip Cookie", bakery2)
dessert2 = Dessert.new("Summer Danish", bakery1)
dessert3 = Dessert.new("Lemon Curd Tarte", bakery1)

ingredient1 = Ingredient.new("chocolate chips", 300, dessert1)
ingredient2 = Ingredient.new("sugar", 200, dessert1)
ingredient3 = Ingredient.new("sugar", 200, dessert2)
ingredient4 = Ingredient.new("sugar", 200, dessert3)
ingredient5 = Ingredient.new("lemon", 20, dessert3)
ingredient6 = Ingredient.new("pluot", 60, dessert2)

driver1 = Driver.new("Dan")
driver2 = Driver.new("John")

passenger1 = Passenger.new("Amy")
passenger2 = Passenger.new("Jessica")

ride1 = Ride.new(passenger1, driver1, 10)
ride2 = Ride.new(passenger2, driver2, 50)
ride3 = Ride.new(passenger1, driver2, 5)


Pry.start
