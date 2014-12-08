require 'test_helper'

class VideolistsControllerTest < ActionController::TestCase
  setup do
    @videolist = videolists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:videolists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create videolist" do
    assert_difference('Videolist.count') do
      post :create, videolist: { author: @videolist.author, category: @videolist.category, description: @videolist.description, flag: @videolist.flag, tag: @videolist.tag, title: @videolist.title, uptime: @videolist.uptime, videoURL: @videolist.videoURL, videoid: @videolist.videoid }
    end

    assert_redirected_to videolist_path(assigns(:videolist))
  end

  test "should show videolist" do
    get :show, id: @videolist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @videolist
    assert_response :success
  end

  test "should update videolist" do
    patch :update, id: @videolist, videolist: { author: @videolist.author, category: @videolist.category, description: @videolist.description, flag: @videolist.flag, tag: @videolist.tag, title: @videolist.title, uptime: @videolist.uptime, videoURL: @videolist.videoURL, videoid: @videolist.videoid }
    assert_redirected_to videolist_path(assigns(:videolist))
  end

  test "should destroy videolist" do
    assert_difference('Videolist.count', -1) do
      delete :destroy, id: @videolist
    end

    assert_redirected_to videolists_path
  end
end
