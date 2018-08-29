describe 'Feature test' do
  let(:menu) { Menu.new }
  let(:basket) { Basket.new }

  describe 'I want to see a list of dishes with price' do
    it 'returns the list of dishes with the price' do
      expect(menu.list).to eq({ "Tartare de thon" => 10, "Brochettes de gambas" => 12,
        "Papillote de saumon" => 14, "Plateau de fromage" => 8 })
    end
  end

  describe 'I want to be able to select dishes' do
    it 'places the selected dishes to the basket' do
      expect(basket.order("Tartare de thon", 1)).to eq('1 x Tartare de thon added to your basket')
    end
  end

  describe 'I want to check that my order is correct' do
    it 'checks that the total matches the sum of the dishes in my order' do
      expect(basket.order("Tartare de thon", 1)).to eq('1 x Tartare de thon added to your basket')
      expect(basket.order("Brochettes de gambas", 2)).to eq('2 x Brochettes de gambas added to your basket')
      expect(basket.sub_total).to eq("The subtotal of your order is £34.")
    end
  end
end
