require 'minitest/autorun'
require 'minitest/pride'
require './lib/cpu_player'
require 'pry'

class CpuPlayerTest < Minitest::Test

  def test_it_exists
    cpu_player = CpuPlayer.new
    assert_instance_of CpuPlayer, cpu_player
  end

  # def test_it_can_choose_a_random_column
  #   cpu_player = CpuPlayer.new
  #   assert cpu_player.random_column.between?(0..6)
  # end

end
