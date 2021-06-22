require './game'
require './player'
require './questions'

# Request player names
puts "Enter Player 1 name: "
name1 = gets.chomp.to_s
puts "Enter Player 2 name: "
name2 = gets.chomp.to_s

player1 = Player.new(name1)
player2 = Player.new(name2)

