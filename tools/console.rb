require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

l1 = Listing.new("11 Cherry St", "House", "Boston")
l2 = Listing.new("15 Cherry St", "Apartment", "Boston")
l3 = Listing.new("25 Apple St", "House", "New York")
l4 = Listing.new("29 Apple St", "House", "New York")

g1 = Guest.new("Dave")
g2 = Guest.new("Dan")
g3 = Guest.new("Marvin")
g4 = Guest.new ("Dan")

t1 = Trip.new(g1, l1)
t2 = Trip.new(g1, l2)
t3 = Trip.new(g1, l3)
t4 = Trip.new(g2, l2)
t5 = Trip.new(g3, l1)
t6 = Trip.new(g3, l2)

b1 = Bakery.new("Big Bakery")
b2 = Bakery.new("Small Bakery")
b3 = Bakery.new("Average-Sized Bakery")

d1 = b1.add_dessert("Cake")
d2 = b1.add_dessert("Muffin")
d3 = b2.add_dessert("Croissant")
d4 = b3.add_dessert("Brownie")

i1 = d1.add_ingredient("Chocolate", 500)
i2 = d1.add_ingredient("Flour", 50)
i3 = d2.add_ingredient("Blueberries", 10)
i4 = d3.add_ingredient("Crispies", 150)
i5 = d4.add_ingredient("Fudge", 200)
i6 = d1.add_ingredient("Chocolate Sprinkles", 30)

dr1 = Driver.new("Daniel Ricciardo")
dr2 = Driver.new("Kevin Magnusson")
dr3 = Driver.new("Max Verstappen")
dr4 = Driver.new("Lewis Hamilton")
dr5 = Driver.new("Sebastian Vettel")
dr6 = Driver.new("Alexander Albon")
dr7 = Driver.new("Lando Norris")
dr8 = Driver.new("Kimi Raikkonen")
dr9 = Driver.new("Sergio Perez")
dr10 = Driver.new("George Russell")


p1 = Passenger.new("Valteri Bottas")
p2 = Passenger.new("Charles LeClerc")
p3 = Passenger.new("Pierre Gasly")
p4 = Passenger.new("Nico Hulkenburg")
p5 = Passenger.new("Roman Grojean")
p6 = Passenger.new("Daniel Kyviat")
p7 = Passenger.new("Carlos Sainz")
p8 = Passenger.new("Antonio Giovanazzi")
p9 = Passenger.new("Lando Norris")
p10 = Passenger.new("Robert Kubitz")

r1 = Ride.new(dr1, p1, 95)
r2 = Ride.new(dr2, p1, 7)
r3 = Ride.new(dr7, p4, 104)
r4 = Ride.new(dr4, p6, 3)
r5 = Ride.new(dr8, p10, 4)
r6 = Ride.new(dr3, p3, 5)
r7 = Ride.new(dr6, p6, 1)
r8 = Ride.new(dr5, p2, 8)
r9 = Ride.new(dr1, p7, 9)
r10 = Ride.new(dr2, p9, 3)


Pry.start
