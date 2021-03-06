require 'spec_helper'

RSpec.describe BabySqueel::Pluck do
  describe '.decorate' do
    if ActiveRecord::VERSION::MAJOR >= 5
      it 'always returns identity' do
        expect(described_class.decorate(1)).to eq(1)
      end
    else
      it 'returns a Pluck' do
        expect(described_class.decorate(1)).to be_a(described_class)
      end
    end
  end

  describe '#to_s' do
    it 'returns the node' do
      expect(described_class.new(1).to_s).to eq(1)
    end
  end
end
