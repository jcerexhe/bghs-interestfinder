require 'test_helper'

class InterestGroupsControllerTest < ActionController::TestCase
  setup do
    @interest_group = interest_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:interest_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create interest_group" do
    assert_difference('InterestGroup.count') do
      post :create, interest_group: { description: @interest_group.description, image: @interest_group.image, name: @interest_group.name, user_id: @interest_group.user_id }
    end

    assert_redirected_to interest_group_path(assigns(:interest_group))
  end

  test "should show interest_group" do
    get :show, id: @interest_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @interest_group
    assert_response :success
  end

  test "should update interest_group" do
    patch :update, id: @interest_group, interest_group: { description: @interest_group.description, image: @interest_group.image, name: @interest_group.name, user_id: @interest_group.user_id }
    assert_redirected_to interest_group_path(assigns(:interest_group))
  end

  test "should destroy interest_group" do
    assert_difference('InterestGroup.count', -1) do
      delete :destroy, id: @interest_group
    end

    assert_redirected_to interest_groups_path
  end
end
