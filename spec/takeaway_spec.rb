require 'takeaway'
require 'menu'

describe Takeaway do
  let(:takeaway) { described_class.new(menu) }
  let(:menu) { double :menu }

  describe '#print_menu' do
    it 'prints the menu' do
      allow(menu).to receive(:price_list).and_return('menu')
      expect(takeaway.print_menu).to eq('menu')
    end
  end

end
