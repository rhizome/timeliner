require "test_helper"

describe Event do
  before do
    @timeline = timelines(:basic)
    @event = events(:basic)
    @timeline.events << @event
  end

  it "must be valid" do
    @event.valid?.must_equal true
  end
end
