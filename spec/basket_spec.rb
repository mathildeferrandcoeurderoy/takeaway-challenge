require 'basket'

describe Basket do
  let(:basket) { described_class.new }

  describe '#order method' do
    it { is_expected.to respond_to(:order).with(2).arguments }

    it 'adds dishes to the basket' do
      expect(basket.order("Tartare de thon", 1)).to eq('1 x Tartare de thon added to your basket')
    end
  end

end
