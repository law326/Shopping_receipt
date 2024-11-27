require './shopping_basket'
require './shopping_receipt'

shopping_basket = ShoppingBasket.new(ARGV[0] || 'shopping_list.txt')
shopping_receipt = ShoppingReceipt.new(shopping_basket)
shopping_receipt.print
