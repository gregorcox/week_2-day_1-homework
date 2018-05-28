require("minitest/autorun")
require_relative("../team")

class TeamTest < MiniTest::Test

  def test_team_name
    team = Team.new("Liverpool", ["Salah", "Firmino", "Mane", "Henderson", "Robertson"], "Klopp")
    assert_equal("Liverpool", team.get_team_name())
  end

end
