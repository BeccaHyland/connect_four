require 'minitest/autorun'
require 'minitest/pride'
require './lib/message'
require 'pry'

class MessageTest < Minitest::Test

  def test_it_exists
    message = Message.new
    assert_instance_of Message, message
  end

  def test_it_can_ask_for_clarification
    message = Message.new
    expected = "Oops, Connect Four can't read that. Please try again."
    assert_equal expected, message.clarify
  end


end
