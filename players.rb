
class Players
  attr_accessor :name, :current_player
  attr_reader :current_lives


  def initialize (name)
    @name = name
    @current_player = true  
    @current_lives = 3
  end

  def is_active? 
    @current_player
  end

  def set_active
    if @current_player == false
      @current_player = true
    end
  end

  def set_inactive
    if @current_player == true
      @current_player = false
    end
  end

  def get_name
    puts "#{self.name}"
  end

  def lose_a_life
    @current_lives -= 1
  end

  def get_current_lives
    "#{@current_lives}/3"
  end

  def get_lives
    self.current_lives
  end
end 
