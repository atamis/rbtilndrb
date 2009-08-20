require "test/unit"

require "rabbit.rb"

class TestRabbit < Test::Unit::TestCase
  @@m = Rabbit.new("m")
  @@f = Rabbit.new("f")
  def default_test
    assert_alive
    male_tests
  end
  def assert_alive
    assert_equal(true, @@m.alive?)
    assert_equal(true, @@f.alive?)
  end
  
  def male_tests
    rabbit = @@m
    assert_equal("male", rabbit.gender)
    assert_equal(true, rabbit.male?)
    assert_equal(false, rabbit.female?)
  end
  
end


