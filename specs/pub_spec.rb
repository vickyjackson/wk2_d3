require("minitest/autorun")
require_relative("../pub")

class TestPub < Minitest::Test

  def test_name()
    pub = Pub.new("Queen Vic", 500)
    assert_equal("Queen Vic", pub.name())
  end

  def test_till()
    pub = Pub.new("Queen Vic", 500)
    assert_equal(500, pub.till())
  end

  # def test_drinks()
  #   pub = Pub.new("Queen Vic", 500)
  #   assert_equal([], pub.drinks())
  # end

end
