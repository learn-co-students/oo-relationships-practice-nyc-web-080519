class Dessert
    attr_reader :name
    attr_accessor :bakery

    @@all = []

    def initialize(name, bakery)
        @name = name
        @bakery = bakery
        @@all << self
    end

    def add_ingredient(name, calorie_count)
        Ingredient.new(name, calorie_count, self)
    end

    def ingredients
        Ingredient.all.select do |ingredient|
            ingredient.dessert == self
        end
    end

    def calories
        ingredients.map do |ingredient|
            ingredient.calorie_count
        end.sum
    end

    def self.all
        @@all
    end
end