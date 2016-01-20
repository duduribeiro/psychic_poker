module HandRules
  class Flush < BaseRule
    def match_rule?(hand)
      hand.group_by{|card| card.suit.suit}.size == 1
    end

    def value
      6
    end

    def to_s
      'flush'
    end
  end
end
