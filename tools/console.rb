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

Pry.start
