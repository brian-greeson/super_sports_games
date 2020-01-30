require "minitest/autorun"
require "minitest/pride"
require "./lib/event"

class EventTest < Minitest::Test

  def test_it_exists
    event = Event.new

    assert_instance_of Event, event
  end

end
