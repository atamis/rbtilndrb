require 'test/unit/testsuite'
require 'tc_rabbit'


class RbtIlndrb
  def self.suite
    suite = Test::Unit::TestSuite.new
    suite << TestRabbit.suite
    return suite
  end
end