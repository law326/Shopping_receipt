require 'rspec'
require './shopping_basket'
require './items'

RSpec.describe ShoppingBasket do
  before(:each) do
    @list_file_path = 'test_list.txt'
    File.open(@list_file_path, 'w') do |file|
      file.puts '1 book at 12.49'
      file.puts '1 imported chocolate at 10.00'
      file.puts '2 music CDs at 14.99'
    end
    @basket = ShoppingBasket.new(@list_file_path)
  end

  after(:each) do
    File.delete(@list_file_path) if File.exist?(@list_file_path)
  end

  describe '#items' do
    it 'returns the correct number of items' do
      items = @basket.items
      expect(items.size).to eq(3)
    end

    it 'returns the correct details for the first item' do
      item = @basket.items[0]
      expect(item.quantity).to eq(1)
      expect(item.name).to eq('book')
      expect(item.price).to eq(12.49)
      expect(item.imported).to be_falsey
    end

    it 'returns the correct details for the second item' do
      item = @basket.items[1]
      expect(item.quantity).to eq(1)
      expect(item.name).to eq('imported chocolate')
      expect(item.price).to eq(10.00)
      expect(item.imported).to be_truthy
    end

    it 'returns the correct details for the third item' do
      item = @basket.items[2]
      expect(item.quantity).to eq(2)
      expect(item.name).to eq('music CDs')
      expect(item.price).to eq(14.99)
      expect(item.imported).to be_falsey
    end
  end
end
