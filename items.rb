require './float_with_precision'

class Item
  def initialize(quantity, name, price, imported)
    @quantity = quantity
    @name = name
    @price = price
    @imported = imported
  end

  attr_reader :quantity, :name, :price, :imported

  def duty
    0
  end

  def price_with_duty
    (@price + duty).round(2)
  end

  def total_price
    (price_with_duty * quantity)
  end
end

class ExemptItem < Item
  def duty
    0
  end
end

class ImportedItem < Item
  def duty
    (@price * 0.05).round_to_nearest
  end
end

class TaxableItem < Item
  def duty
    (@price * 0.1).round_to_nearest
  end
end

class ImportedTaxableItem < Item
  def duty
    (@price * 0.15).round_to_nearest
  end
end

class ItemFactory
  EXEMPT_ITEMS = ['book', 'chocolate', 'pills']

  def self.create(quantity, name, price, imported)
    if EXEMPT_ITEMS.any? { |item| name.include?(item) }
      if imported
        ImportedItem.new(quantity, name, price, imported)
      else
        ExemptItem.new(quantity, name, price, imported)
      end
    else
      if imported
        ImportedTaxableItem.new(quantity, name, price, imported)
      else
        TaxableItem.new(quantity, name, price, imported)
      end
    end
  end
end
