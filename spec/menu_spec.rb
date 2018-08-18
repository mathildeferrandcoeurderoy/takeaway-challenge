require 'menu'

describe Menu do
  describe '#price_list method' do
    it { is_expected.to respond_to(:price_list) }
  end

end
