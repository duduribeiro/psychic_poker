module HandRules
  class TwoPairs < BaseRule
    def match_rule?(hand)
      hand.group_by{|card| card.face.face}.reject{|face, cards| cards.length != 2 }.length == 2
    end

    def value
      3
    end

    def to_s
      'two-pairs'
    end
  end
end
