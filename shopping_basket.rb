require './items'

class ShoppingBasket
  def initialize(list_file_path)
    @list_file_path = list_file_path
  end

  def items
    File.open(@list_file_path).each_line.map do |line|
      quantity = line.split.first.to_i
      name = line.split[1..-3].join(' ')
      imported = name.include?('imported')
      price = line.split[-1].to_f
      ItemFactory.create(quantity, name, price, imported)
    end
  end
end
