module HandRules
  class BaseRule
    attr_reader :next_rule

    def initialize(next_rule = nil)
      @next_rule = next_rule
    end

    def process_rules(hand)
      if match_rule?(hand)
        return self
      elsif next_rule
        next_rule.process_rules(hand)
      else
        HighestCard.new
      end
    end
  end
end
