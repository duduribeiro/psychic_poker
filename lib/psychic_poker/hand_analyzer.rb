class HandAnalyzer
  RULES = HandRules::StraightFlush.new(
    HandRules::FourOfAKind.new(HandRules::FullHouse.new(HandRules::Flush.new(
      HandRules::Straight.new(HandRules::ThreeOfAKind.new(HandRules::TwoPairs.new(HandRules::OnePair.new)))
    )))
  )

  def self.analyze(hand)
    RULES.process_rules(hand)
  end
end
