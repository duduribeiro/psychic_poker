module HandRules
  class OnePair < BaseRule
    def match_rule?(hand)
      hand.group_by{|card| card.face.face}.reject{|face, cards| cards.length != 2 }.any?
    end

    def value
      2
    end

    def to_s
      'one-pair'
    end
  end
end
