class Guest
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def my_trips
        Trip.all.select do |trip|
            trip.guest == self
        end
    end

    def self.pro_traveller
        all.select do |guest|
            guest.my_trips.count > 1
        end
    end

    def self.find_all_by_name(name)
        all.select do |guest|
            guest.name == name
        end
    end
end