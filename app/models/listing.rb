class Listing
    attr_reader :city
    @@all = []

    def initialize(city)
        @city = city
        @@all << self
    end

    def trips
        Trip.all.select do |trip|
            trip.listing == self
        end
    end

    def guests
        self.trips.map do |trip|
            trip.guest
        end
    end

    def self.all
        @@all
    end

    def self.find_all_by_city(city)
        self.all.select do |listing|
            listing.city == city
        end
    end

    def self.most_popular
        self.all.max_by do |listing|
            listing.trips.count
        end
    end

end