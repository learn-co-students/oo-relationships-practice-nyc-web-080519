class Ride
    attr_reader :passenger, :driver, :distance
    @@all = []

    def initialize(passenger, driver, distance)
        @passenger = passenger
        @driver = driver
        @distance = distance
        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_distance
        total_distances = self.all.sum do |ride|
            ride.distance
        end
        total_distances.to_f / self.all.count
    end

end #end