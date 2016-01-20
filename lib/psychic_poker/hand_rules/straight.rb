module HandRules
  class Straight < BaseRule
    def match_rule?(hand)
      hand.sort_by!{ |card| card.face.face_value }
      (0..hand.length-2).each do |time|
        return false unless hand[time+1].sequence_of(hand[time])
      end
      true
    end

    def value
      5
    end

    def to_s
      'straight'
    end
  end
end
