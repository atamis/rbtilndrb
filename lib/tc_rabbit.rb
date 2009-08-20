require "test/unit"

require "rabbit"

class TestRabbit < Test::Unit::TestCase
  m = Rabbit.new(m)
  f = Rabbit.new(f)
  def test_case_name
    assert(m.alive?, "M not alive.")
  end
end