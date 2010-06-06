require 'test_helper'

class InitiativesControllerTest < ActionController::TestCase
  setup do
    @initiative = initiatives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:initiatives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create initiative" do
    assert_difference('Initiative.count') do
      post :create, :initiative => @initiative.attributes
    end

    assert_redirected_to initiative_path(assigns(:initiative))
  end

  test "should show initiative" do
    get :show, :id => @initiative.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @initiative.to_param
    assert_response :success
  end

  test "should update initiative" do
    put :update, :id => @initiative.to_param, :initiative => @initiative.attributes
    assert_redirected_to initiative_path(assigns(:initiative))
  end

  test "should destroy initiative" do
    assert_difference('Initiative.count', -1) do
      delete :destroy, :id => @initiative.to_param
    end

    assert_redirected_to initiatives_path
  end
end
