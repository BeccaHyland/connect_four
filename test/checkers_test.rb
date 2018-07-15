require 'minitest/autorun'
require 'minitest/pride'
require './lib/checkers'
require 'pry'

class CheckersTest < Minitest::Test

  def test_it_exists
    checkers = Checkers.new
    assert_instance_of Checkers, checkers
  end

  

end
