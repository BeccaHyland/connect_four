require 'minitest/autorun'
require 'minitest/pride'
require './lib/message'
require 'pry'

class MessageTest < Minitest::Test

  def test_it_exists
    message = Message.new
    assert_instance_of Message, message
  end

  def test_it_can_welcome
    message = Message.new
    expected = "Welcome to Connect Four. Are you ready to play? Enter YES or NO."
    assert_equal expected, message.welcome
  end


end
