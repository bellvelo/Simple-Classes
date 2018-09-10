class Team
  attr_reader :team_name
  attr_accessor :coach

  def initialize(team_name, players, coach, points)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = points
  end

# def team_name
#   return @team_name
# end
#
  def players  # reinstated as I needed to add @players methods
    return @players
  end
#
# def coach
#   return @coach
# end
#
# def update_coach(new_coach)
#   return @coach = new_coach
# end

  def add_player(new_player)
    @players << new_player
  end

  def is_player_on_team(player)
    for team_mate in @players
      return true if team_mate == player
    end
    return nil
  end

  def game_result(final_result)
    scores = {
      "Win" => 3,
      "Draw" => 2,
      "Lose" => 0
    }
    @points += scores[final_result]
  end
end
