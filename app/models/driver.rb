class Driver
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def rides
        Ride.all.select do |ride|
            ride.driver == self
        end
    end

    def passengers
        rides.map do |ride|
            ride.passenger
        end
    end

    def self.all
        @@all
    end

    def total_distance
        rides.map do |ride|
            ride.distance
        end.sum
    end

    def self.mileage_cap(distance)
        all.select do |driver|
            driver.total_distance > distance
        end
    end
end