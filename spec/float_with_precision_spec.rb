require 'rspec'
require './float_with_precision'

RSpec.describe Float do
  describe '#round_to_nearest' do
    it 'rounds 0.0 to 0.0' do
      expect(0.0.round_to_nearest).to eq(0.0)
    end

    it 'rounds 0.02 to the nearest 0.05' do
      expect(0.02.round_to_nearest).to eq(0.05)
    end

    it 'rounds 0.03 to the nearest 0.05' do
      expect(0.03.round_to_nearest).to eq(0.05)
    end

    it 'rounds 0.05 to the nearest 0.05' do
      expect(0.05.round_to_nearest).to eq(0.05)
    end

    it 'rounds 0.07 to the nearest 0.05' do
      expect(0.07.round_to_nearest).to eq(0.1)
    end

    it 'rounds 0.1 to the nearest 0.05' do
      expect(0.1.round_to_nearest).to eq(0.1)
    end

    it 'rounds 1.23 to the nearest 0.05' do
      expect(1.23.round_to_nearest).to eq(1.25)
    end

    it 'rounds 1.27 to the nearest 0.05' do
      expect(1.27.round_to_nearest).to eq(1.3)
    end

    it 'rounds 1.25 to the nearest 0.05' do
      expect(1.25.round_to_nearest).to eq(1.25)
    end

    it 'rounds 1.28 to the nearest 0.05' do
      expect(1.28.round_to_nearest).to eq(1.3)
    end
  end
end
