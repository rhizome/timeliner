require "test_helper"

describe LinksController do

  before do
    @link = links(:one)
  end

  it "must get index" do
    get '/index.html'
    assert_response :success
    assert_not_nil assigns(:links)
  end

  it "must get new" do
    get '/new.html'
    assert_response :success
  end

  it "must create link" do
    assert_difference('Link.count') do
      post :create, params: { link: { url: "http://blah.com" } }
    end

    assert_redirected_to link_path(assigns(:link))
  end

  it "must show link" do
    get :show, params: { id: @link }
    assert_response :success
  end

  it "must get edit" do
    get :edit, params: { id: @link }
    assert_response :success
  end

  it "must update link" do
    put :update, params: { id: @link, link: { url: "http://blah.com" } }
    assert_redirected_to link_path(assigns(:link))
  end

  it "must destroy link" do
    assert_difference('Link.count', -1) do
      delete :destroy, params: { id: @link }
    end

    assert_redirected_to links_path
  end

end
