require 'test_helper'

class BasicsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get add" do
    get :add
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

end
