class Dessert
    attr_reader :bakery, :name
    @@all = []

    def initialize(name, bakery)
        @name = name
        @bakery = bakery
        @@all << self
    end

    def self.all
        @@all
    end

    def ingredients
        Ingredient.all.select do |ingredient|
            ingredient.dessert == self
        end
    end

    def calories
        self.ingredients.sum do |ingredient|
            ingredient.calories
        end
    end

end