class Movie
    attr_accessor :title, :year

    @@all = []

    def initialize(title, year)
        @title = title
        @year = year
        @@all << self
    end

    def self.all
        @@all
    end
end