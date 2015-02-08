require 'test_helper'

class GirlsControllerTest < ActionController::TestCase
  setup do
    @girl = girls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:girls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end


  test "should show girl" do
    get :show, id: @girl
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @girl
    assert_response :success
  end

  test "should update girl" do
    patch :update, id: @girl, girl: { name: @girl.name, number: @girl.number }
  end

end
