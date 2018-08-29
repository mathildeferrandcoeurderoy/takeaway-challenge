class Menu

  attr_reader :list

  def initialize
    @list = { 'Tartare de thon' => 10,
      'Brochettes de gambas' => 12,
      'Papillote de saumon' => 14,
      'Plateau de fromage' => 8 }
  end
end
