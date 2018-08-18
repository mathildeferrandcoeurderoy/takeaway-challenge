class Basket

  def initialize
    @basket = { }

  end

  def order(dish, quantity)
    @basket[dish] = quantity
    "#{quantity} x #{dish} added to your basket"
  end

end
