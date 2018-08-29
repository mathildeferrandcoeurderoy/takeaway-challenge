require 'basket'

describe Basket do
  let(:basket) { described_class.new }
  let(:sms) { SMS.new }
  # let(:time) { double :time }
  # let(:client) { double :client }

  describe '#order method' do
    it 'adds dishes to the basket' do
      expect(basket.order("Tartare de thon", 1)).to eq('1 x Tartare de thon added to your basket')
    end
  end

  describe '#sub_total' do
    it 'verifies if the method is working' do
      expect(basket.order("Tartare de thon", 1)).to eq('1 x Tartare de thon added to your basket')
      expect(basket.order("Brochettes de gambas", 2)).to eq('2 x Brochettes de gambas added to your basket')
      expect(basket.sub_total).to eq("The subtotal of your order is £34.")
    end
  end

  describe '#verification' do

    context 'order checked out' do
      before(:each) do
        input = 'Yes'
      end

      it 'sends the sms' do
        expect(sms.send_sms)
      end
    end

    context 'order not checked out' do
      before(:each) do
        input = 'No'
      end

      it 'will raises an error' do
        expect { basket.verification }.to raise_error("Order not checked out")
      end
    end

  end

end
