require 'test_helper'

class ConsumersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:consumers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create consumer" do
    assert_difference('Consumer.count') do
      post :create, :consumer => { }
    end

    assert_redirected_to consumer_path(assigns(:consumer))
  end

  test "should show consumer" do
    get :show, :id => consumers(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => consumers(:one).to_param
    assert_response :success
  end

  test "should update consumer" do
    put :update, :id => consumers(:one).to_param, :consumer => { }
    assert_redirected_to consumer_path(assigns(:consumer))
  end

  test "should destroy consumer" do
    assert_difference('Consumer.count', -1) do
      delete :destroy, :id => consumers(:one).to_param
    end

    assert_redirected_to consumers_path
  end
end
