require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/JungleBeat'
require_relative '../lib/LinkedList'

class JungleBeatTest < Minitest::Test

  def test_junglebeat_can_be_created
    skip
    jb = JungleBeat.new(beats)
    assert_equal jb, jb
  end

end
