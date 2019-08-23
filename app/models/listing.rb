class Listing
    attr_reader :address, :type, :city

    @@all = []

    def initialize(address, type, city)
        @address = address
        @type = type
        @city = city
        @@all << self
    end

    def my_trips
        Trip.all.select do |trip|
            trip.listing == self
        end
    end

    def guests
        my_trips.map do |trip|
          trip.guest
        end
    end

    def trip_count
        my_trips.count
    end

    def self.all
        @@all
    end

    def self.find_all_by_city(city)
        all.select do |listing|
            listing.city == city
        end
    end

    def self.most_popular
        most_trips = 0
        most_popular_listing = nil
        all.each do |listing|
            if listing.my_trips.count > most_trips
                most_trips = listing.my_trips.count
                most_popular_listing = listing
            end
        end
        return most_popular_listing
    end

end