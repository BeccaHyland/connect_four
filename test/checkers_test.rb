require 'minitest/autorun'
require 'minitest/pride'
require './lib/checkers'
require 'pry'

class CheckersTest < Minitest::Test

  def test_it_exists
    checkers = Checkers.new
    assert_instance_of Checkers, checkers
  end

  # def test_it_can_convert_board_columns_to_index
  #   checkers = Checkers.new
  #   assert_equal 2, checkers.convert_to_index("C")
  # end

end
