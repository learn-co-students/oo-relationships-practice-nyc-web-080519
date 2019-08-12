class Ingredient
    attr_reader :name, :calories, :dessert
    @@all = []

    def initialize(name, calories, dessert)
        @name = name
        @calories = calories
        @dessert = dessert
        @@all << self
    end

    def self.all
        @@all
    end

    def bakery
        self.dessert.bakery
    end

    def self.find_all_by_name(ingredient_name)
        self.all.select do |ingredient|
            ingredient.name.include?(ingredient_name)
        end
    end
end