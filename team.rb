# ### Part B - Extension
#
# Now we would like you to make a class that represents a sports team.
#
# * Make a class to represent a Team that has the properties Team name (String), Players (array of strings) and a Coach (String).
# * For each property in the class make a getter method than can return them.
# * Create a setter method to allow the coach's name to be updated.
# * Refactor the class to use `attr_reader` or `attr_accessor` instead of your own getter and setter methods.
# * Create a method that adds a new player to the players array.
# * Add a method that takes in a string of a player's name and checks to see if they are in the players array.
# * Add a points property into your class that starts at 0.
# * Create a method that takes in whether the team has won or lost and updates the points property for a win.

class Team

  attr_accessor(:team_name, :players, :coach, :points)

  def initialize(input_team_name, input_players, input_coach)
    @team_name = input_team_name
    @players = input_players
    @coach = input_coach
    @points = 0
  end

  # def get_team_name()
  #   return @team_name
  # end
  #
  # def get_players()
  #   return @players
  # end
  #
  # def get_coach()
  #   return @coach
  # end

  # def set_coach(new_coach)
  #   @coach = new_coach
  # end

  def add_player(player)
    @players.push(player)
  end

  def player_check(player)
    @players.include?(player)
  end

  def add_points(result)
    @points += 3 if result = "win"
  end

end
