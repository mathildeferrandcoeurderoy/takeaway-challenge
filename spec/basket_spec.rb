require 'basket'

describe Basket do
  describe '#order method' do
    it { is_expected.to respond_to(:order).with(2).arguments }
  end


end
