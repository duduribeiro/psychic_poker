class HandAnalyzer
  RULES = HandRules::TwoPairs.new(HandRules::OnePair.new(nil))

  def self.analyze(hand)
    RULES.process_rules(hand)
  end
end
