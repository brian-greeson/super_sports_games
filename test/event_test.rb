require "minitest/autorun"
require "minitest/pride"
require "./lib/event"

class EventTest < Minitest::Test

  def test_it_exists
    event = Event.new

    assert_instance_of Event, event
  end

  def test_it_has_a_name
    event = Event.new("Billy's Bobsled Bomb")

    assert_equal "Billy's Bobsled Bomb", event.name
  end

  def test_it_has_ages_array
    event = Event.new("Billy's Bobsled Bomb", [1,10,100])

    assert_equal [1,10,100], event.ages
  end
end
