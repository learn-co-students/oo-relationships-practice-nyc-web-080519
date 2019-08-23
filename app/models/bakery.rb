class Bakery
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def add_dessert(name)
        Dessert.new(name, self)
    end

    def ingredients
        Dessert.all do |dessert|
            dessert.ingredients
        end.flatten
    end

    def desserts
        Dessert.all.select do |dessert|
            dessert.bakery == self
        end
    end

    def average_calories
        my_calories = desserts.map do |dessert|
            dessert.calories
        end
        return my_calories.sum / my_calories.count
    end

    def shopping_list
        desserts.map do |dessert|
            dessert.ingredients.map do |ingredient|
                ingredient.name
            end
        end.flatten
    end

    def self.all
        @@all
    end

end