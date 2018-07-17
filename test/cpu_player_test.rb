require 'minitest/autorun'
require 'minitest/pride'
require './lib/cpu_player'
require 'pry'

class CpuPlayerTest < Minitest::Test

  def test_it_exists
    cpu_player = CpuPlayer.new
    assert_instance_of CpuPlayer, cpu_player
  end

  


end
