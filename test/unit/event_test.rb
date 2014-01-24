require 'test_helper'

class EventTest < ActiveSupport::TestCase

  test "plain event valid" do
    assert events(:basic).valid?
  end

  test "event requires a start date" do
    event = Event.new(:name => 'New event')
    assert ! event.valid?
    event.start_date = 2012-02-02
    assert event.valid?
  end

  test "event requires a name" do
    event = Event.new(:start_date => '2011-11-11')
    assert ! event.valid?
    event.name = "Updated event"
    assert event.valid?
  end

  test "event with timeline exists" do
    event = events(:basic)
    timeline = timelines(:basic)
    timeline.events << event
    assert event.timelines.present?
    assert_equal 1, event.timelines.size
    assert_equal "Timeline One", event.timelines.first.name
  end
end
