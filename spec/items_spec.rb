require 'rspec'
require './items'

RSpec.describe ItemFactory do
  describe '.create' do
    context 'when creating an exempt item' do
      it 'creates an ExemptItem' do
        item = ItemFactory.create(1, 'book', 12.49, false)
        expect(item).to be_an_instance_of(ExemptItem)
        expect(item.quantity).to eq(1)
        expect(item.name).to eq('book')
        expect(item.price).to eq(12.49)
        expect(item.imported).to eq(false)
      end
    end

    context 'when creating an imported exempt item' do
      it 'creates an ImportedItem' do
        item = ItemFactory.create(1, 'imported box of chocolates', 10.00, true)
        expect(item).to be_an_instance_of(ImportedItem)
        expect(item.quantity).to eq(1)
        expect(item.name).to eq('imported box of chocolates')
        expect(item.price).to eq(10.00)
        expect(item.imported).to eq(true)
      end
    end

    context 'when creating a taxable item' do
      it 'creates a TaxableItem' do
        item = ItemFactory.create(1, 'music CD', 14.99, false)
        expect(item).to be_an_instance_of(TaxableItem)
        expect(item.quantity).to eq(1)
        expect(item.name).to eq('music CD')
        expect(item.price).to eq(14.99)
        expect(item.imported).to eq(false)
      end
    end

    context 'when creating an imported taxable item' do
      it 'creates an ImportedTaxableItem' do
        item = ItemFactory.create(1, 'imported bottle of perfume', 47.50, true)
        expect(item).to be_an_instance_of(ImportedTaxableItem)
        expect(item.quantity).to eq(1)
        expect(item.name).to eq('imported bottle of perfume')
        expect(item.price).to eq(47.50)
        expect(item.imported).to eq(true)
      end
    end
  end
end
