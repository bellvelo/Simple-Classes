require('minitest/autorun')
require('minitest/rg')
require_relative('../team.rb')

class TestTeam < Minitest::Test

  def setup
    @team = Team.new("Wildcats", ["Bobby","Jonny","Tommy"], "Coach Wilson", 0)
  end

  def test_team_name
    result = @team.team_name
    assert_equal("Wildcats", result)
  end

  def test_players
    result = @team.players
    assert_equal(["Bobby","Jonny","Tommy"], result)
  end

  def test_coach
    result = @team.coach
    assert_equal("Coach Wilson", result)
  end

  def test_update_coach
    result = @team.coach = "Coach Bell"
    assert_equal("Coach Bell", result)
  end

  def test_add_player
    @team.add_player("Ralph")
    assert_equal(["Bobby","Jonny","Tommy","Ralph"], @team.players)
    assert_equal(4, @team.players.count)
  end

  def test_is_player_on_team
    result = @team.is_player_on_team("Tommy")
    assert_equal(true, result)
  end

  def test_game_result
    result = @team.game_result("Win")
    assert_equal(3, result)
  end

end
