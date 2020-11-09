require "./game.rb"

puts "Welcom to the number adding game! If you can't solve this then you have issues!"

puts "----------"

puts "what is Player One's name?"
@p1_name = gets.chomp.to_s
puts "Nice to meet you #{@p1_name}"
puts "----------------------"
puts puts "what is Player Two's name?"
@p2_name = gets.chomp.to_s
puts "Nice to meet you #{@p2_name}"
puts "----------------------"

new_game = Game.new(@p1_name, @p2_name)
new_game.run_game


puts "Thanks for playing!"