require("minitest/autorun")
require_relative("../drink")

class TestDrink < Minitest::Test

  def test_name()
    drink = Drink.new("Beer", 4)
    assert_equal("Beer", drink.name())
  end

  def test_price()
    drink = Drink.new("Beer", 4)
    assert_equal(4, drink.price())
  end

end
