require_relative 'dish.rb'
class Order  
    attr_reader :menu, :basket

    def initialize(menu = [Dish.new("pasta", 9.99), Dish.new("chicken", 3.99), Dish.new("salad", 2.99)])
        @menu = menu 
        @basket = []
    end 

    def view_menu
        @menu.each do |dish| 
          puts "#{dish.name}: £#{dish.price}"
        end
    end

    def view_basket
        puts "-------------------"
        subtotal = 0
        @basket.each do |dish| 
        subtotal += (dish.price * dish.qty)
        puts "#{dish.name}(#{dish.qty}): £#{dish.price * dish.qty}"
        end
        puts "-------------------"
        puts "subtotal: £#{subtotal}"
        puts "-------------------"
    end

    def add(dish)

        if on_menu?(dish)
           
            if in_basket?(dish)
                selected_dish = @basket.find { |item| item.name == dish }
                selected_dish.increase_qty
            else 
                selected_dish = @menu.find { |item| item.name == dish }
                selected_dish.increase_qty
                @basket << selected_dish
            end

        else 
            puts "Cannot add #{dish}. Item not on menu!"
        end

    end

    private 

    def on_menu?(dish)
      @menu.any? { |item| item.name == dish }
    end

    def in_basket?(dish)
        @basket.any? { |item| item.name == dish }
      end

end

order = Order.new
order.view_menu
order.add("chicken")
order.view_basket