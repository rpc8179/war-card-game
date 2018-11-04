class Hand
  # Your code here

  # Methods you may need:
  # - initialize
  # - method that returns the number of cards in a hand,
  #  which represents that opponents score.
  # - attribute readers
  # - any other methods you deem necessary

  def initialize(hand)
      @hand = hand
  end

  def draw
    # returns the last card in the player's hand
    @hand[0]
  end

  def score
    # determines how many cards are in a hand
    return @hand.length
  end

  def add_card(card)
      @hand << card
  end

  def remove(card)
      @hand.delete(card)
  end

  def prettyPrint
      @hand.each do |card|
          print " |#{card.rank}#{card.suit}|"
      end
      puts "\n"
  end

end
