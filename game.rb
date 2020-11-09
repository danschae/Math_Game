require "./players.rb"

class Game 

  def initialize (playerone, playertwo)
    @player_one = Players.new(playerone)
    @player_two = Players.new(playertwo)
  end

  def get_current_player
    if @player_one.current_player == true
      @player_one
    elsif @player_two.current_player == true
      @player_two
    end
  end

  def generate_questions
    random_number_1 = rand(1..20)
    random_number_2 = rand(1..20)
    puts "#{get_current_player.name}: What is the sum of #{random_number_1} + #{random_number_2}"
    return random_number_1 + random_number_2
  end

  def answer_question 
    if generate_questions == gets.chomp.to_i
      puts "correct!"
    else
      puts "Are you dumb?"
      get_current_player.lose_a_life
    end
  end

  def checkWinner 
    if @player_one.current_lives == 0
      puts "#{@player_two.name} won with #{@player_two.current_lives}/3 lives remaining"
      puts "-------- Game over! -------"
    elsif @player_two.current_lives == 0
      puts "#{@player_one.name} won with #{@player_one.current_lives}/3 lives remaining"
      puts "-------- Game over! -------"
    end
  end

  def run_game
    while @player_one.current_lives > 0 && @player_two.current_lives > 0 do
      if @player_one.is_active? 
        answer_question
        @player_two.set_active
        @player_one.set_inactive
        puts "P1: #{@player_one.get_current_lives} vs P2: #{@player_two.get_current_lives}"
        puts "------ New Turn ------"
      elsif @player_two.is_active?
        answer_question
        @player_two.set_inactive
        @player_one.set_active
        puts "P1: #{@player_one.get_current_lives} vs P2: #{@player_two.get_current_lives}"
        puts "------ New Turn ------"
      end
      checkWinner
    end
  end
end


