require "test_helper"

describe Timeline do
  before do
    @timeline = Timeline.new
  end

  it "must be valid" do
    @timeline.valid?.must_equal true
  end
end
