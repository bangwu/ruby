require 'test/unit'
class Love
  def self.saved?
    true
  end
end
class LoveTest < Test::Unit::TestCase
  def test_save
    assert Love.saved?,"我们不合适。。。"
  end
end
