require "test_helper"

describe TimelinesController do

  before do
    @timeline = timelines(:basic)
  end

  it "must get index" do
    get timelines_url
    assert_response :success
  end

  it "must get new" do
    get new_timeline_url
    assert_response :success
  end

  it "must create timeline" do
    assert_difference('Timeline.count') do
      post :create, params: { timeline: { name: "a timeline" } }
    end
    assert_redirected_to timeline_path(assigns(:timeline))
  end

  it "must show timeline" do
    get timeline_url, params: { timeline: { id: @timeline.id } }
    assert_response :success
  end

  it "must get edit" do
    get edit_timeline_url, params: { timeline: { id: @timeline.id } }
    assert_response :success
  end

  it "must update timeline" do
    put "/timelines/update.html", params: { id: @timeline, timeline: { name: "changed name" } }
    assert_redirected_to timeline_path(assigns(:timeline))
  end

  it "must destroy timeline" do
    assert_difference('Timeline.count', -1) do
      delete '/', params: { id: @timeline }
    end
    assert_redirected_to timelines_path
  end

end
