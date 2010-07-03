require 'test_helper'

class WorkGroupsControllerTest < ActionController::TestCase
  setup do
    @work_group = work_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:work_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create work_group" do
    assert_difference('WorkGroup.count') do
      post :create, :work_group => @work_group.attributes
    end

    assert_redirected_to work_group_path(assigns(:work_group))
  end

  test "should show work_group" do
    get :show, :id => @work_group.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @work_group.to_param
    assert_response :success
  end

  test "should update work_group" do
    put :update, :id => @work_group.to_param, :work_group => @work_group.attributes
    assert_redirected_to work_group_path(assigns(:work_group))
  end

  test "should destroy work_group" do
    assert_difference('WorkGroup.count', -1) do
      delete :destroy, :id => @work_group.to_param
    end

    assert_redirected_to work_groups_path
  end
end
