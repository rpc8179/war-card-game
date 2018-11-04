require_relative "deck"
require_relative "hand"
require_relative "round"

class War
    attr_reader :player_hand, :computer_hand
  def initialize
    @deck = Deck.new

    # Each of the instance variables below should store a Hand object.
    # Each hand object should hold an array of cards for a player.
    # You may wish to define a method on the 'Deck' in order to help retrieve cards
    # from your 'deck' object and pass them to a 'Hand' object
    # @player_hand = ...
    # @computer_hand = ...
    @player_hand = Hand.new(@deck.deal_hand_cards)
    @computer_hand = Hand.new(@deck.deal_hand_cards)
  end

  def play_round
    round = Round.new(@player_hand.draw, @computer_hand.draw)
    if round.player_wins?
      # resolve what happens to both opponents hands when the player wins the round

      # add yours back to the deck at the back
      #@player_hand.remove(@player_hand.draw)
      #@player_hand.add_card(@player_hand.draw)

      # add losers card
      @player_hand.add_card(@computer_hand.draw)
      @computer_hand.remove(@computer_hand.draw)
    else
      # resolve what happens to both opponents hands when the computer wins the round

      # add yours back to the deck at the back
      #@computer_hand.remove(@computer_hand.draw)
      #@computer_hand.add_card(@computer_hand.draw)

      # add losers card
      @computer_hand.add_card(@player_hand.draw)
      @player_hand.remove(@player_hand.draw)
    end
  end

  def game_over?
    # returns true if one of the players is out of cards
    @player_hand.score == 0 || @computer_hand.score == 0
  end

  def game_winner
    # determines the last output message of the game
    if @player_hand.score == 0
        puts "You are out of cards; computer has won!"
        puts "Winning score: #{@computer_hand.score}"
    elsif @computer_hand.score == 0
        puts "Computer is out of cards; you have won!"
        puts "Winning score: #{@player_hand.score}"
    end
  end

  def computer_score
      return @computer_hand.score
  end

  def player_score
      return @player_hand.score
  end
end
