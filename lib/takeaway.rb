require_relative 'basket'
require_relative 'menu'

class Takeaway

  attr_reader :menu_list

  def initialize(menu_list = Menu.new)
    @menu_list = menu_list.price_list

  end

  def print_menu
    @menu_list
  end

end
