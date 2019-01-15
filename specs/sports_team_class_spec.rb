require("minitest/autorun")
require("minitest/rg")
require_relative("../sports_team_class")

class TestSportsTeam < Minitest::Test

  def test_get_team_name()
    team = SportsTeam.new("Manchester United", ["Anthony Martial", "Paul Pogba", "Marcus Rashford", "David De Gea", "Phil Jones"], "Robert Templeton")
    assert_equal("Manchester United", team.team_name())
  end

  def test_get_players()
    team = SportsTeam.new("Manchester United", ["Anthony Martial", "Paul Pogba", "Marcus Rashford", "David De Gea", "Phil Jones"], "Robert Templeton")
    assert_equal(["Anthony Martial", "Paul Pogba", "Marcus Rashford", "David De Gea", "Phil Jones"], team.players())
  end

  def test_get_coach()
    team = SportsTeam.new("Manchester United", ["Anthony Martial", "Paul Pogba", "Marcus Rashford", "David De Gea", "Phil Jones"], "Robert Templeton")
    assert_equal("Robert Templeton", team.coach())
  end

  def test_set_coach_name()
    team = SportsTeam.new("Machester United", ["Anthony Martial", "Paul Pogba", "Marcus Rashford", "David De Gea", "Phil Jones"], "Robert Templeton")
    team.coach = ("John")
    assert_equal("John", team.coach())
  end

  def test_add_new_player()
    team = SportsTeam.new("Machester United", ["Anthony Martial", "Paul Pogba", "Marcus Rashford", "David De Gea", "Phil Jones"], "Robert Templeton")
    expected = team.players.length + 1
    team.add_new_player("Chris Smalling")
    assert_equal(expected, team.players.length())
  end

  def test_check_if_in_team__in_team()
    team = SportsTeam.new("Machester United", ["Anthony Martial", "Paul Pogba", "Marcus Rashford", "David De Gea", "Phil Jones"], "Robert Templeton")
    assert_equal(true, team.check_if_in_team("Paul Pogba"))
  end

  def test_check_if_in_team__not_in_team()
    team = SportsTeam.new("Machester United", ["Anthony Martial", "Paul Pogba", "Marcus Rashford", "David De Gea", "Phil Jones"], "Robert Templeton")
    assert_equal(false, team.check_if_in_team("Eden Hazard"))
  end

  def test_get_points()
    team = SportsTeam.new("Machester United", ["Anthony Martial", "Paul Pogba", "Marcus Rashford", "David De Gea", "Phil Jones"], "Robert Templeton")
    assert_equal(0, team.points)
  end

  def test_point_distribution__for_win()
    team = SportsTeam.new("Machester United", ["Anthony Martial", "Paul Pogba", "Marcus Rashford", "David De Gea", "Phil Jones"], "Robert Templeton")
    team.distribute_points("win")
    assert_equal(3, team.points())
  end

  def test_point_distribution__for_draw()
    team = SportsTeam.new("Machester United", ["Anthony Martial", "Paul Pogba", "Marcus Rashford", "David De Gea", "Phil Jones"], "Robert Templeton")
    team.distribute_points("draw")
    assert_equal(1, team.points())
  end

  def test_point_distribution__for_lose()
    team = SportsTeam.new("Machester United", ["Anthony Martial", "Paul Pogba", "Marcus Rashford", "David De Gea", "Phil Jones"], "Robert Templeton")
    team.distribute_points("lose")
    assert_equal(0, team.points())
  end

end
