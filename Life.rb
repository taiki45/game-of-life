#
#This class controlls life
#
class Life
  #define instance var
  #and substitute the argument, that will be DEAD or ALIVE
  def initialize(condition)
    @dead_or_alive = condition
    @death_count = 0
    @birth_count = 0
  end
  
  #set accessor for only reading
  attr_reader :dead_or_alive
  
  public
  def die
    @dead_or_alive = DEAD
    @death_count += 1
    true
  end
  
  def born
    @dead_or_alive = ALIVE
    @birth_count += 1
    true
  end
  
  def dead?
    return true if @dead_or_alive == DEAD
    false
  end
  
  def alive?
    return true if @dead_or_alive == ALIVE
    false
  end
  
  def dead_or_alive?
    return DEAD if @dead_or_alive == DEAD
    ALIVE
  end
end