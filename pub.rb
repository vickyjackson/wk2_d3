require_relative('customer')
require_relative('drink')

class Pub

    # Getters
    attr_reader :name, :till, :drinkstock
    # Setters

    # Initialize the argument list
    def initialize(name, till_value, drinkstock)
      @name = name
      @till = till_value
      @drinkstock = drinkstock
    end

    # Class methods

    def count_drinks_in_drinkstock()
      return @drinkstock.length()
    end

    def remove_drink_from_pub()
      @drinkstock.pop
    end

    def add_money_to_till(amount)
      @till += amount
    end
end
