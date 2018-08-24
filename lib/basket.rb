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
    subtotal = basket.map do |dish, quantity|
      menu[dish] * quantity
    end.inject(:+)
    "The subtotal of your order is £#{subtotal}."
  end

  def verification
    puts "Do you want to checkout?"
    input = gets.chomp
    raise "Order not checked out" if input == "No"
    sms if input == "Yes"
  end

end
