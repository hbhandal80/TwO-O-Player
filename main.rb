require './game'
require './player'
require './questions'

# Get player names
puts "Enter Player 1 name: "
name1 = gets.chomp.to_s
puts "Enter Player 2 name: "
name2 = gets.chomp.to_s

player1 = Player.new(name1)
player2 = Player.new(name2)

game = Game.new(player1, player2)

while game.players[0].life > 0 and game.players[1].life > 0  
  question = Questions.new
  puts "---- NEW TURN ----"
  puts "#{game.current_player.name}: #{question.generate_question}"
  answer = question.answer

  ans = gets.chomp.to_i

  if (ans != answer)
    game.minus_life
  end
  game.return_life
end
