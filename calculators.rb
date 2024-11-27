require './float_with_precision'

class TotalDutyCalculator
  def initialize(shopping_basket)
    @shopping_basket = shopping_basket
  end

  def calculate
    @shopping_basket.items.reduce(0) do |sum, item|
      sum + item.duty * item.quantity
    end.round(2)
  end
end

class TotalPriceCalculator
  def initialize(shopping_basket)
    @shopping_basket = shopping_basket
  end

  def calculate
    @shopping_basket.items.reduce(0) do |sum, item|
      sum + item.price_with_duty * item.quantity
    end.round(2)
  end
end
