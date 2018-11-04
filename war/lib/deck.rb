require_relative "card"

class Deck
    attr_reader :cards
  # SUITS = ['♦', '♣', '♠', '♥']
  # RANKS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A']

  # For your first pass at this assignment, we advise having a smaller deck with one suit.
  SUITS = ['♦']
  RANKS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K']

  def initialize
    @cards = build_deck
  end

  def build_deck
    # For every element in SUITS, iterate over every element in RANKS, and create a Card object. Then shuffle the deck.
    cards = []
    SUITS.each do |suit|
      RANKS.each do |rank|
        cards << Card.new(rank, suit)
      end
    end
    cards.shuffle!
  end

  def deal_hand_cards
     # removes half of the cards from the @cards array and returns them
     # review the Ruby Docs online to see a list of Array methods that may help
     if @cards.length == RANKS.length * SUITS.length
         return @cards.pop(@cards.length/2)
    elsif @cards.length == (RANKS.length / 2) * SUITS.length
        return @cards
    end

  end
end
/
deck = Deck.new
deck.build_deck
deck.deal_hand_cards/
