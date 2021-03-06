module HandRules
  class ThreeOfAKind < BaseRule
    def match_rule?(hand)
      hand.group_by{|card| card.face.face}.reject{|face, cards| cards.length != 3 }.any?
    end

    def value
      4
    end

    def to_s
      'three-of-a-kind'
    end
  end
end
