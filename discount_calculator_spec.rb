require 'test_helper'

class DiscountCalculatorTest < ActiveSupport::TestCase
  test "calculates total for cart items" do
    items = [{ price: 10.00, quantity: 2 }, { price: 5.00, quantity: 1 }]
    assert_equal 25.00, DiscountCalculator.calculate(items)
  end

  test "applies promo code discount" do
    items = [{ price: 100.00, quantity: 1 }]
    assert_equal 90.00, DiscountCalculator.calculate(items, 'SAVE10')
  end

  test "applies loyalty discount for users over 30 days old" do
    items = [{ price: 50.00, quantity: 1 }]
    user = User.new(created_at: 60.days.ago)
    assert_equal 47.50, DiscountCalculator.calculate(items, nil, user)
  end

  test "applies free shipping discount over $100" do
    items = [{ price: 150.00, quantity: 1 }]
    assert_equal 140.00, DiscountCalculator.calculate(items)
  end
end
