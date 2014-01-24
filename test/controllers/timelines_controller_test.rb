require "test_helper"

describe TimelinesController do

  before do
    @timeline = timelines(:basic)
  end

  it "must get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:timelines)
  end

  it "must get new" do
    get :new
    assert_response :success
  end

  it "must create timeline" do
    assert_difference('Timeline.count') do
      post :create, timeline: { name: "a timeline" }
    end

    assert_redirected_to timeline_path(assigns(:timeline))
  end

  it "must show timeline" do
    get :show, id: @timeline
    assert_response :success
  end

  it "must get edit" do
    get :edit, id: @timeline
    assert_response :success
  end

  it "must update timeline" do
    put :update, id: @timeline, timeline: { name: "changed name" }
    assert_redirected_to timeline_path(assigns(:timeline))
  end

  it "must destroy timeline" do
    assert_difference('Timeline.count', -1) do
      delete :destroy, id: @timeline
    end

    assert_redirected_to timelines_path
  end

end
