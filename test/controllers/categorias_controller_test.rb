require 'test_helper'

class CategoriasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get getfilter" do
    get :getfilter
    assert_response :success
  end

end
