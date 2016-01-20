class Play
  def self.start(hand, deck)
    hand_chars, deck_chars = hand.dup, deck.dup
    [hand, deck].each { |set| set.map! { |card| Card.new card } }
    puts "Hand: #{hand_chars.join(' ')}\tDeck: #{deck_chars.join(' ')}\tBest Hand: #{BestHand.process hand, deck}"
  end
end
