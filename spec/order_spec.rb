require_relative "../lib/order.rb"
# require_relative '../lib/dish.rb'

RSpec.describe Order do
    order = Order.new()
    it "adds chicken to basket" do
        order.add("chicken")
        added_item = order.basket[-1]
        expect(added_item.name).to eq "chicken"
    end

end