require("minitest/autorun")
require_relative("../customer")

class TestCustomer < Minitest::Test

  def setup()
    @pub = Pub.new("Queen Vic", 500, [@drink1, @drink2, @drink3])
    @customer = Customer.new("Colin", 10)
    @drink1 = Drink.new("Beer", 4)
    @drink2 = Drink.new("Wine", 7)
    @drink3 = Drink.new("Prosecco", 10)
  end

  def test_name()
    assert_equal("Colin", @customer.name())
  end

  def test_wallet()
    assert_equal(10, @customer.wallet())
  end

  def test_add_drink_to_customer()
    @customer.add_drink_to_customer()
    assert_equal(1, @customer.drinks)
  end

  def test_customer_buys_drink()
    @customer.customer_buys_drink(@pub, @drink1)
    assert_equal(6, @customer.wallet())
    assert_equal(504, @pub.till())
    assert_equal(1, @customer.drinks)
    assert_equal(2, @pub.drinkstock.length)
  end

end
