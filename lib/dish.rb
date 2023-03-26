class Dish
    attr_reader :name, :price, :qty

    def initialize(name, price, qty = 0)
        @name = name
        @price = price
        @qty = qty
    end 

    def increase_qty
        @qty += 1
    end

    def decrease_qty
        @qty -= 1
    end

end

 