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

  def test_knows_max_age
    event = Event.new("Billy's Bobsled Bomb", [1,10,100])

    assert_equal 100, event.max_age
  end

  def test_knows_min_age
    event = Event.new("Billy's Bobsled Bomb", [1,10,100])

    assert_equal 1, event.min_age
  end

  def test_knows_average_age
    event = Event.new("Billy's Bobsled Bomb", [1,10,5])

    assert_equal 5.33, event.average_age
  end

  def test_knows_standard_deviation_of_ages
    event = Event.new("Billy's Bobsled Bomb", [24, 30, 18, 20, 41])

    assert_equal 8.28, event.standard_deviation_age
  end
end
