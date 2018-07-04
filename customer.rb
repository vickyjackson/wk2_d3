require_relative('pub')

class Customer

    # Getters
    attr_reader :name, :wallet, :drinks
    # Setters

    # Initialize the argument list
    def initialize(name, wallet)
      @name = name
      @wallet = wallet
      @drinks = 0
    end

    # Class methods

    def add_drink_to_customer()
      @drinks += 1
    end

    def customer_buys_drink(pub, drink)
      @wallet -= drink.price
      pub.add_money_to_till(drink.price)
      add_drink_to_customer()
      pub.remove_drink_from_pub()
    end
end
