class Card
  attr_reader :face

  def initialize(card)
    @face, @suit = Face.new(card.chars.first), Suit.new(card.chars.last)
  end

  def <=>(other)
    self.face <=> other.face
  end

end
