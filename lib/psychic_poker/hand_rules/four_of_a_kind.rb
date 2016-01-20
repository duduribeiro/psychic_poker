module HandRules
  class FourOfAKind < BaseRule
    def match_rule?(hand)
      hand.group_by{|card| card.face.face}.reject{|face, cards| cards.length != 4 }.any?
    end

    def value
      8
    end

    def to_s
      'four-of-a-kind'
    end
  end
end
