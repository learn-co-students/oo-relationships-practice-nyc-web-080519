class Bakery
    attr_accessor :name, :location
    @@all = []

    def initialize(name, location)
        @name = name
        @location = location
        @@all << self
    end

    def self.all
        @@all
    end

    #my desserts (for this bakery)
    def desserts
        Dessert.all.select do |dessert|
            dessert.bakery == self
        end
    end

    def ingredients
        #look through all ingredients
        Ingredient.all.select do |ingredient|
            self.desserts.include?(ingredient.dessert)
        end
    end

    def average_calories
        total_calories = self.ingredients.sum do |ingredient|
            ingredient.calories
        end
        total_calories.to_f / self.ingredients.count
    end

    def shopping_list
        self.ingredients.map do |ingredient|
            ingredient.name
        end
    end
end