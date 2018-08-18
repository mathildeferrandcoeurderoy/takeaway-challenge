describe 'the menu' do
  let(:menu) { Menu.new }

  describe 'I want to see a list of dishes with price' do
    it 'returns the list of dishes with the price' do
      expect(menu.price_list).to eq({ "Tartare de thon" => 10, "Brochettes de gambas" => 12,
        "Papillote de saumon" => 14, "Plateau de fromage" => 8 })
    end
  end
end

describe 'the basket' do
  let (:basket) { Basket.new }

  describe 'I want to be able to select dishes' do
    it 'places the selected dishes to the basket' do
      expect(basket.order("Tartare de thon", 1)).to eq('1 x Tartare de thon added to your basket')
    end
  end
end
