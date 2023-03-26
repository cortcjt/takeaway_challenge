require_relative "../lib/dish.rb"

RSpec.describe Dish do
    dish = Dish.new("pasta", 9.99)

    it "has the name it is initialized with" do
        expect(dish.name).to eq "pasta"
    end

    it "has the price it is initialized with" do
        expect(dish.price).to eq 9.99
    end

    it "has a deafult qty of 0" do
        expect(dish.qty).to eq 0
    end

end
        

