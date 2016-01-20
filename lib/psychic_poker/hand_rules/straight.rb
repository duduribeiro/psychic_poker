module HandRules
  class Straight < BaseRule
    def match_rule?(hand)
      hand.sort_by!{ |card| card.face.face_value }
      (0..hand.length-2).each do |time|
        return false unless hand[time].face.face_value == hand[time+1].face.face_value-1
      end
      true
    end

    def value
      5
    end
  end
end
