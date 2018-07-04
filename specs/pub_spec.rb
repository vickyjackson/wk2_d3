require("minitest/autorun")
require_relative("../pub")

class TestPub < Minitest::Test

  def setup()
    @drink1 = Drink.new("Beer", 4)
    @drink2 = Drink.new("Wine", 7)
    @drink3 = Drink.new("Prosecco", 10)
    @pub = Pub.new("Queen Vic", 500, [@drink1, @drink2, @drink3])
    @customer = Customer.new("Colin", 10)
  end

  def test_name()
    assert_equal("Queen Vic", @pub.name())
  end

  def test_till()
    assert_equal(500, @pub.till())
  end

  def test_count_drinks_in_drinkstock()
    actual = @pub.count_drinks_in_drinkstock()
    assert_equal(3, actual)
  end

  def test_remove_drink_from_pub()
    @pub.remove_drink_from_pub()
    assert_equal(2, @pub.drinkstock.length())
  end

  def test_add_money_to_till()
    @pub.add_money_to_till(10)
    assert_equal(510, @pub.till)
  end

end
