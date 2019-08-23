class Ingredient
    attr_reader :name, :calorie_count
    attr_accessor :dessert

    @@all = []

    def initialize(name, calorie_count, dessert)
        @name = name
        @calorie_count = calorie_count
        @dessert = dessert
        @@all << self
    end

    def bakery
        dessert.bakery
    end

    def self.all
        @@all
    end

    def self.find_all_by_name(name)
        all.select do |ingredient|
            ingredient.name == name || ingredient.name.split(" ")[0] == name
        end
    end

end