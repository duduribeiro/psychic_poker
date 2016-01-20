class Play
  def self.start(hand, deck)
    [hand, deck].each { |set| set.map! { |card| Card.new card } }
    puts BestHand.process hand, deck
  end
end
