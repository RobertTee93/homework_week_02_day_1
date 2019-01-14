class SportsTeam

  attr_reader :team_name, :players, :points
  attr_accessor :coach

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

  # def get_name()
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
  #
  # def set_coach(new_coach)
  #   @coach = new_coach
  # end

  def add_new_player(player_name)
    @players << player_name
  end

  def check_if_in_team(player_name)
    for player in @players
      if player == player_name
        return true
      end
    end
    return false
  end

  def distribute_points(result)
    if result == "win"
      @points += 3
    elsif result == "draw"
      @points += 1
    end
  end

end
