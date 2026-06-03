require_relative 'discount_calculator'

RSpec.describe DiscountCalculator do
  describe '.calculate' do
    it 'calculates total for cart items' do
      items = [{ price: 10.00, quantity: 2 }, { price: 5.00, quantity: 1 }]
      expect(DiscountCalculator.calculate(items)).to eq(25.00)
    end

    it 'applies promo code discount' do
      items = [{ price: 100.00, quantity: 1 }]
      expect(DiscountCalculator.calculate(items, 'SAVE10')).to eq(90.00)
    end

    it 'applies loyalty discount for users over 30 days old' do
      items = [{ price: 50.00, quantity: 1 }]
      user = Struct.new(:created_at).new(Time.now - (60 * 24 * 60 * 60))
      expect(DiscountCalculator.calculate(items, nil, user)).to eq(47.50)
    end

    it 'applies free shipping discount over $100' do
      items = [{ price: 150.00, quantity: 1 }]
      expect(DiscountCalculator.calculate(items)).to eq(140.00)
    end

    # Two failing tests below — candidate needs to make these pass

    it 'handles promo code with trailing whitespace' do
      items = [{ price: 100.00, quantity: 1 }]
      expect(DiscountCalculator.calculate(items, 'SAVE10 ')).to eq(90.00)
    end

    it 'applies a fixed dollar amount promo code' do
      items = [{ price: 50.00, quantity: 1 }]
      expect(DiscountCalculator.calculate(items, 'FIVE_OFF')).to eq(45.00)
    end
  end
end
