class Game
  def initialize 
    @player = 0
    @dealer = 0
  end
  
  def deal
      @card1 = rand(1..11)
      @card2 = rand(1..11)
      @player = @card1 + @card2
  
      @card3 = rand(1..11)
      @card4 = rand(1..11)
      @dealer = @card3 + @card4
        if @dealer < 15
        @dealer = @dealer + rand(1..11)
        else
        @dealer
        end
  end
  
  def score
    if @dealer > 21
      puts "Dealer Busts, Player wins"
    else
      puts "Players score is #{@player}"
      puts "Dealers hand is #{@dealer}"
    end
  end 
  
  def winner
    if @player > @dealer
      puts "Player Wins"
    elsif @player == @dealer
      puts "push"
    else
      puts "Dealer Wins"
    end
  end



g = Game.new
g.deal
g.score
g.winner


end
