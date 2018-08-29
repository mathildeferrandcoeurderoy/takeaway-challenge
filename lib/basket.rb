require_relative 'menu'
require_relative 'sms'

class Basket

  attr_reader :basket, :total, :menu, :sms

  def initialize(menu = Menu.new, sms = SMS.new)
    @menu = menu.list
    @basket = {}
    @sms = sms
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
    sms.send_sms if input == "Yes"
  end

end
