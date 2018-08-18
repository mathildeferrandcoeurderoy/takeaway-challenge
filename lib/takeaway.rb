require 'basket'
require 'menu'

class Takeaway

  def initialize(menu_list)
    @menu_list = menu_list.price_list

  end

  def print_menu
    @menu_list
  end

  def add_to_basket

  end

end
