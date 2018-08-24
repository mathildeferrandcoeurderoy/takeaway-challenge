require 'basket'

describe Basket do
  let(:basket) { described_class.new(menu) }
  let(:menu) { double :menu }

  describe '#order method' do
    it 'adds dishes to the basket' do
      expect(menu).to receive(:price_list)
      expect(basket.order("Tartare de thon", 1)).to eq('1 x Tartare de thon added to your basket')
    end
  end

  describe '#sub_total' do
    it 'verifies if the method is working' do
      allow(menu).to receive(:price_list).and_return({ 'Tartare de thon' => 10, 'Brochettes de gambas' => 12 })
      expect(basket.order("Tartare de thon", 1)).to eq('1 x Tartare de thon added to your basket')
      expect(basket.order("Brochettes de gambas", 2)).to eq('2 x Brochettes de gambas added to your basket')
      expect(basket.sub_total).to eq("The subtotal of your order is £34.")
    end
  end

  describe '#verification' do
    it 'displays the subtotal to the user and asks to proceed or not' do
      allow(menu).to receive(:price_list).and_return({ 'Tartare de thon' => 10, 'Brochettes de gambas' => 12 })
      allow(basket).to receive(:sub_total).and_return("The subtotal of your order is £#{10}.")
      expect(basket.verification)
    end
  end

end
