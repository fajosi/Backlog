require 'test_helper'

class BacklogsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get getfilter" do
    get :getfilter
    assert_response :success
  end

end
