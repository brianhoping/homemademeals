require 'test_helper'

class YeahsControllerTest < ActionController::TestCase
  setup do
    @yeah = yeahs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:yeahs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create yeah" do
    assert_difference('Yeah.count') do
      post :create, yeah: { wtf: @yeah.wtf }
    end

    assert_redirected_to yeah_path(assigns(:yeah))
  end

  test "should show yeah" do
    get :show, id: @yeah
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @yeah
    assert_response :success
  end

  test "should update yeah" do
    patch :update, id: @yeah, yeah: { wtf: @yeah.wtf }
    assert_redirected_to yeah_path(assigns(:yeah))
  end

  test "should destroy yeah" do
    assert_difference('Yeah.count', -1) do
      delete :destroy, id: @yeah
    end

    assert_redirected_to yeahs_path
  end
end
