class BestHand
  def self.process(hand, deck)
    hand.sort!
    results = []
    (0..deck.length).each do |time|
      hand.combination(hand.length - time).each do |combination|
        new_hand  = combination | deck[0...time]
        results << HandAnalyzer.analyze(new_hand)
      end
    end
    results.sort_by(&:value).reverse.first
  end
end
