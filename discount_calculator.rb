# app/services/discount_calculator.rb
class DiscountCalculator
  PROMO_CODES = {
    'SAVE10' => 0.10,
    'SAVE20' => 0.20,
    'HALFOFF' => 0.50
  }

  def self.calculate(cart_items, promo_code = nil, user = nil)
    total = 0
    cart_items.each do |item|
      total += item[:price] * item[:quantity]
    end

    if promo_code
      discount = PROMO_CODES[promo_code.upcase]
      if discount
        total = total - (total * discount)
      end
    end

    if user && user.created_at < 30.days.ago
      total = total * 0.95
    end

    if total > 100
      total = total - 10
    end

    return total.round(2)
  end
end
