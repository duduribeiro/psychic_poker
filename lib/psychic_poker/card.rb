class Card
  attr_reader :face, :suit

  def initialize(card)
    @face, @suit = Face.new(card.chars.first), Suit.new(card.chars.last)
  end

  def sequence_of(other)
    face.face_value == other.face.face_value + 1
  end

  def <=>(other)
    self.face <=> other.face
  end
end
