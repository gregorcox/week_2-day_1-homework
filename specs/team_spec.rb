require("minitest/autorun")
require_relative("../team")

class TeamTest < MiniTest::Test

  def test_team_name
    team = Team.new("Liverpool", ["Salah", "Firmino", "Mane", "Henderson", "Robertson"], "Klopp")
    assert_equal("Liverpool", team.team_name())
  end

  def test_players
    team = Team.new("Liverpool", ["Salah", "Firmino", "Mane", "Henderson", "Robertson"], "Klopp")
    assert_equal(["Salah", "Firmino", "Mane", "Henderson", "Robertson"], team.players())
  end

  def test_coach
    team = Team.new("Liverpool", ["Salah", "Firmino", "Mane", "Henderson", "Robertson"], "Klopp")
    assert_equal("Klopp", team.coach())
  end

  def test_set_coach
    team = Team.new("Liverpool", ["Salah", "Firmino", "Mane", "Henderson", "Robertson"], "Klopp")
    team.coach = "Cox"
    assert_equal("Cox", team.coach())
  end

  def test_add_player
    team = Team.new("Liverpool", ["Salah", "Firmino", "Mane", "Henderson", "Robertson"], "Klopp")
    assert_equal(["Salah", "Firmino", "Mane", "Henderson", "Robertson", "Lovren"], team.add_player("Lovren"))
  end

  def test_player_check
    team = Team.new("Liverpool", ["Salah", "Firmino", "Mane", "Henderson", "Robertson"], "Klopp")
    assert_equal(true, team.player_check("Salah"))
  end

  def test_add_points
    team = Team.new("Liverpool", ["Salah", "Firmino", "Mane", "Henderson", "Robertson"], "Klopp")
    team.add_points("win")
    assert_equal(3, team.points)
  end






end
