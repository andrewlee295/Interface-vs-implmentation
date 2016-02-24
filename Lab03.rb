class Game
  attr_reader :players, :deck

  def initialize()
  @players = []
  @deck = Deck.new
  end

  def check_for_win
    true
  end

  def move
    true
  end

end

class Deck
  attr_reader :cards

  def initialize()
    @cards = Card.new
    #create cards
  end

    def deal_cards(player)
      raise "Expected Player, got something else" unless player.is_a?(Player)
      true
    end

  def hit(player)
    raise "Expected Player, got something else" unless player.is_a?(Player)
    Card.new
  end

  def shuffle
    nil
  end

end

class Card
  attr_reader :number, :symbol
  def initialize(number = nil, symbol = nil)
    @number = number | default_number
    @symbol = symbol | default_symbol
  end

  def default_number
    [:Q].sample
  end

  def default_symbol
    [:H].sample
  end

  def card_value()
    10
  end

end

class Hand
  attr_reader :card

  def initialize()
    @card = []
  end

  def add_card(card)
    raise "Expected Card, got something else" unless card.is_a?(Card)
    self
  end

  def check_points()
    21
  end

end

class Player
  attr_reader :hand;

  def initialize (hand = nil)
    @hand = hand
  end

  def move()
    self
  end

end

class Comp_Player
  attr_reader :hand;

  def initialize (hand = nil)
    @hand = hand
  end

    def move()
      self
    end

  def min_value(integer)
    raise "Expected Integer, got something else" unless card.is_a?(Integer)
    self
  end

end

class Human_Player
  attr_reader :hand;

  def initialize (hand= nil)
    @hand = hand
  end

    def move()
      self
    end
end
