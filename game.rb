require './player'
require './questions'

class Game
  attr_reader :current_player, :players

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_player = @players[0]
  end

  def minus_life
    puts "Seriously? No!"
    @current_player.life -= 1
    if @current_player.life == 0
      puts "#{@current_player.name}, you lose"
      puts "----GAME OVER----"
      puts "Good bye!"
    end
  end

  def return_life
    puts "P1: #{@players[0].name}: #{@players[0].life}/3 vs P2: #{@players[1].name}: #{@players[1].life}/3"
  
    if @current_player == @players[0]
      @current_player = @players[1]
    else
      @current_player = @players[0]
    end
  end
end