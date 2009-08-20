require "test/unit"

require "rabbit.rb"

class TestRabbit < Test::Unit::TestCase
  @@m = Rabbit.new("m")
  @@f = Rabbit.new("f")
  def default_test
    assert_alive
    male_tests
#    female_tests
    age_tests
    breeding_tests
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
  
  def female_tests
    rabbit = @@f
    assert_equal("female", rabbit.gender)
    assert_equal(true, rabbit.female?)
    assert_equal(false, rabbit.male?)
  end
  
  def age_tests
    assert_equal(0, @@f.age)
    assert_equal(0, @@m.age)
    assert_equal(false, @@f.available?)
    assert_equal(false, @@m.available?)
  end
  
  def breeding_tests
    rabbit1 = @@m
    rabbit2 = @@f
    assert_equal("Not eligible!", rabbit1.breed)
    assert_equal("Not eligible!", rabbit2.breed)
    5.times do
      rabbit1.next
      rabbit2.next
    end
    assert_equal(true, rabbit1.available?)
    assert_equal(true, rabbit2.available?)
  end
  
end


