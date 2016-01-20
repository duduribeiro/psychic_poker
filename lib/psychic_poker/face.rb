class Face
  attr_reader :face

  FACE_VALUES = {
    'T' => 10,
    'J' => 11,
    'Q' => 12,
    'K' => 13,
    'A' => 1
  }

  def initialize(face)
    @face = face
  end

  def face_value
    Integer(@face) rescue FACE_VALUES[@face]
  end

  def <=>(other)
    other.face_value <=> self.face_value
  end
end
