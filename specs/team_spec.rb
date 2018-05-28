require("minitest/autorun")
require_relative("../team")

class TeamTest < MiniTest::Test

  def test_team_name
    team = Team.new("Liverpool", ["Salah", "Firmino", "Mane", "Henderson", "Robertson"], "Klopp")
    assert_equal("Liverpool", team.get_team_name())
  end

  def test_players
    team = Team.new("Liverpool", ["Salah", "Firmino", "Mane", "Henderson", "Robertson"], "Klopp")
    assert_equal(["Salah", "Firmino", "Mane", "Henderson", "Robertson"], team.get_players())
  end

  def test_coach
    team = Team.new("Liverpool", ["Salah", "Firmino", "Mane", "Henderson", "Robertson"], "Klopp")
    assert_equal("Klopp", team.get_coach())
  end



end
