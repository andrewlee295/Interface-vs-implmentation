require_relative "Lab03.rb"
require "test/unit"

class TestGame < Test::Unit::TestCase

  def test_Game
    g = Game.new()
    assert_equal(true, g.check_for_win(), "Check_for_win is broken")
    assert_equal(true, g.move, "move is broken")

  end

end

class TestDeck < Test::Unit::TestCase

  def test_Deck
    d = Deck.new()
    assert_equal(true, d.deal_cards(Player.new), "Deal_cards is broken")
    assert_instance_of(Card, d.hit(Player.new), "Hit is broken")
    assert_equal(nil, d.shuffle, "Shuffle is Broken")
  end

end

class TestCard < Test::Unit::TestCase

  def test_Card
    c = Card.new()
    assert_equal(:Q, c.default_number, "Default_number is broken")
    assert_equal(:H, c.default_symbol, "Default_symbol is broken")
    assert_equal(10, c.card_value, "Card_value is broken")
  end

end

class TestHand < Test::Unit::TestCase

  def test_Hand
    h = Hand.new()
    assert_instance_of(Hand, h.add_card(Card.new), "Add_card is broken")
    assert_equal(21, h.check_points, "Check_point is broken")
  end

end

class TestHand < Test::Unit::TestCase

  def test_Player
    pl = Player.new()
    assert_instance_of(Player, pl.move, "Move is broken")
  end

end

class TestComp_Player < Test::Unit::TestCase

  def test_Comp_Player
    cp = Comp_Player.new()
    assert_instance_of(Comp_Player,cp.move, "Comp_Player is broken")
    assert_instance_of(Comp_Player, pl = Comp_Player.new(4), "Min_value is broken")
  end

end

class TestHuman_Player < Test::Unit::TestCase

  def test_Human_Player
    hp = Human_Player.new()
    assert_instance_of(Human_Player, hp.move, "Human_Player is broken")
  end

end
