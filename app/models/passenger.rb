class Passenger
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def rides
        Ride.all.select do |ride|
            ride.passenger == self
        end

    end

    def drivers
        rides.map do |ride|
            ride.driver
        end
    end

    def total_distance
        rides.map do |ride|
            ride.distance
        end.sum
    end

    def self.all
        @@all
    end

    def self.premium_members
        all.select do |passenger|
            passenger.total_distance > 100
        end
    end
end