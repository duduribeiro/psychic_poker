module HandRules
  class StraightFlush < BaseRule
    def match_rule?(hand)
      Straight.new.match_rule?(hand) && Flush.new.match_rule?(hand)
    end

    def value
      9
    end
  end
end
