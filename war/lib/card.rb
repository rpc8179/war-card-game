class Card
    attr_reader :rank, :suit
  # Your code here

  # Methods you may need:
  # - initialize
  # - method that assigns all cards their "values",
  #  so that we can determine which card has a higher value in a round
  # - attribute readers
  # - any other methods you deem necessary

  def initialize(rank, suit)
      @rank = rank
      @suit = suit
  end

  def value
      if @rank.class == Fixnum
          return @rank
      else
          if @rank == "J"
              return 11
          elsif @rank == "Q"
              return 12
          elsif @rank == "K"
              return 13
          end
     end
  end

end
