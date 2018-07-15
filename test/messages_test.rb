require 'minitest/autorun'
require 'minitest/pride'
require './lib/messages'
require 'pry'

class MessagesTest < Minitest::Test

  def test_it_exists
    messages = Messages.new
    assert_instance_of Messages, messages
  end

  def test_it_can_welcome
    messages = Messages.new
    expected = "Welcome to Connect Four. Are you ready to play? Enter YES or NO."
    assert_equal expected, messages.welcome
  end


end
