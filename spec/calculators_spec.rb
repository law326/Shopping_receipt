require 'rspec'
require './calculators'

RSpec.describe TotalDutyCalculator do
  let(:item1) { double('Item', duty: 0.05, quantity: 2) }
  let(:item2) { double('Item', duty: 0.1, quantity: 1) }
  let(:shopping_basket) { double('ShoppingBasket', items: [item1, item2]) }
  let(:calculator) { TotalDutyCalculator.new(shopping_basket) }

  describe '#calculate' do
    it 'calculates the total duty and rounds to the nearest 0.05' do
      expect(calculator.calculate).to eq(0.2)
    end
  end
end
RSpec.describe TotalPriceCalculator do
  let(:item1) { double('Item', price_with_duty: 10.05, quantity: 2) }
  let(:item2) { double('Item', price_with_duty: 20.10, quantity: 1) }
  let(:shopping_basket) { double('ShoppingBasket', items: [item1, item2]) }
  let(:calculator) { TotalPriceCalculator.new(shopping_basket) }

  describe '#calculate' do
    it 'calculates the total price with duty and rounds to the nearest 0.05' do
      expect(calculator.calculate).to eq(40.20)
    end
  end
end
