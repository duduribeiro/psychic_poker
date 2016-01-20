class HandAnalyzer
  RULES = HandRules::Flush.new(
    HandRules::Straight.new(HandRules::ThreeOfAKind.new(HandRules::TwoPairs.new(HandRules::OnePair.new)))
  )

  def self.analyze(hand)
    RULES.process_rules(hand)
  end
end
