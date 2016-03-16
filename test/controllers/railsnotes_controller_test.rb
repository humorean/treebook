require 'test_helper'

class RailsnotesControllerTest < ActionController::TestCase
  setup do
    @railsnote = railsnotes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:railsnotes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create railsnote" do
    assert_difference('Railsnote.count') do
      post :create, railsnote: { JS_Equilavent: @railsnote.JS_Equilavent, content: @railsnote.content, title: @railsnote.title }
    end

    assert_redirected_to railsnote_path(assigns(:railsnote))
  end

  test "should show railsnote" do
    get :show, id: @railsnote
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @railsnote
    assert_response :success
  end

  test "should update railsnote" do
    patch :update, id: @railsnote, railsnote: { JS_Equilavent: @railsnote.JS_Equilavent, content: @railsnote.content, title: @railsnote.title }
    assert_redirected_to railsnote_path(assigns(:railsnote))
  end

  test "should destroy railsnote" do
    assert_difference('Railsnote.count', -1) do
      delete :destroy, id: @railsnote
    end

    assert_redirected_to railsnotes_path
  end
end
