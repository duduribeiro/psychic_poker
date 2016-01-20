class HandAnalyzer
  RULES = HandRules::TwoPairs.new(HandRules::OnePair.new)

  def self.analyze(hand)
    RULES.process_rules(hand)
  end
end
