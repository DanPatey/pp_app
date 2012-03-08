require 'test_helper'

class UserlistsControllerTest < ActionController::TestCase
  setup do
    @userlist = userlists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:userlists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create userlist" do
    assert_difference('Userlist.count') do
      post :create, userlist: @userlist.attributes
    end

    assert_redirected_to userlist_path(assigns(:userlist))
  end

  test "should show userlist" do
    get :show, id: @userlist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @userlist
    assert_response :success
  end

  test "should update userlist" do
    put :update, id: @userlist, userlist: @userlist.attributes
    assert_redirected_to userlist_path(assigns(:userlist))
  end

  test "should destroy userlist" do
    assert_difference('Userlist.count', -1) do
      delete :destroy, id: @userlist
    end

    assert_redirected_to userlists_path
  end
end
