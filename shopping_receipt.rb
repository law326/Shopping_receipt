require './calculators'

class ShoppingReceipt
  def initialize(shopping_basket)
    @shopping_basket = shopping_basket
  end

  def print
    @shopping_basket.items.each do |item|
      puts "#{item.quantity} #{item.name}: #{item.total_price}"
    end
    puts "Sales Taxes: #{TotalDutyCalculator.new(@shopping_basket).calculate}"
    puts "Total: #{TotalPriceCalculator.new(@shopping_basket).calculate}"
  end
end
