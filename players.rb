class Player
  #Creates a player, with a name, and lives, 0 lives resulting in death
attr_accessor :name, :lives
def initialize (name)
@name = name
@lives = 3
end

def lose_life 
@lives -=1
end

def is_alive
@lives > 0
end

end

