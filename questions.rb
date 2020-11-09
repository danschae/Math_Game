# require "./players"

# class Questions

#   def initialize 
#     @random_number_1 = rand(1..20)
#     @random_number_2 = rand(1..20)
#     @question = "What is the sum of #{@random_number_1} + #{@random_number_2}"
#   end

#   def generate_questions
#     puts @question
#     return random_number_1 + random_number_2
#   end

#   def answer_question 
#     if generate_questions == gets.chomp.to_i
#       puts "correct!"
#       return true
#     else
#       puts "Are you dumb?"
#       return false
#     end
#   end
# end


## will be used later