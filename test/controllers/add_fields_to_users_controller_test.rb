require 'test_helper'

class AddFieldsToUsersControllerTest < ActionController::TestCase
  setup do
    @add_fields_to_user = add_fields_to_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:add_fields_to_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create add_fields_to_user" do
    assert_difference('AddFieldsToUser.count') do
      post :create, add_fields_to_user: { grade: @add_fields_to_user.grade, user_id: @add_fields_to_user.user_id }
    end

    assert_redirected_to add_fields_to_user_path(assigns(:add_fields_to_user))
  end

  test "should show add_fields_to_user" do
    get :show, id: @add_fields_to_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @add_fields_to_user
    assert_response :success
  end

  test "should update add_fields_to_user" do
    patch :update, id: @add_fields_to_user, add_fields_to_user: { grade: @add_fields_to_user.grade, user_id: @add_fields_to_user.user_id }
    assert_redirected_to add_fields_to_user_path(assigns(:add_fields_to_user))
  end

  test "should destroy add_fields_to_user" do
    assert_difference('AddFieldsToUser.count', -1) do
      delete :destroy, id: @add_fields_to_user
    end

    assert_redirected_to add_fields_to_users_path
  end
end
