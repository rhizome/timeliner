require "test_helper"

describe Event do
  before do
    @timeline = timelines(:basic)
    @event = events(:basic)
    @timeline.events << @event
  end

  it "must be valid" do
    assert_equal @event.valid?, true, @event.inspect
  end
end
