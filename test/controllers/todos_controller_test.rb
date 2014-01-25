require 'test_helper'

class TodosControllerTest < ActionController::TestCase
  test "should get todolist" do
    get :index
    assert_response :success
  end

  test "should create new Todo object" do
    post :create, todo: {name: 'hoge', description: "fuga"}
    assert_response :success
  end
end
