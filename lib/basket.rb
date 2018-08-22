class Basket

  attr_reader :basket, :total, :menu

  def initialize(menu = Menu.new)
    @menu = menu.price_list
    @basket = {}
  end

  def order(dish, quantity)
    @basket[dish] = quantity
    "#{quantity} x #{dish} added to your basket"
  end

  def sub_total
    basket.map do |dish, quantity|
      menu[dish] * quantity
    end.inject(:+)
  end

end
