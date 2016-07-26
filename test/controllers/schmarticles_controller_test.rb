require 'test_helper'

class SchmarticlesControllerTest < ActionController::TestCase
  setup do
    @schmarticle = schmarticles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:schmarticles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create schmarticle" do
    assert_difference('Schmarticle.count') do
      post :create, schmarticle: { body: @schmarticle.body, title: @schmarticle.title }
    end

    assert_redirected_to schmarticle_path(assigns(:schmarticle))
  end

  test "should show schmarticle" do
    get :show, id: @schmarticle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @schmarticle
    assert_response :success
  end

  test "should update schmarticle" do
    patch :update, id: @schmarticle, schmarticle: { body: @schmarticle.body, title: @schmarticle.title }
    assert_redirected_to schmarticle_path(assigns(:schmarticle))
  end

  test "should destroy schmarticle" do
    assert_difference('Schmarticle.count', -1) do
      delete :destroy, id: @schmarticle
    end

    assert_redirected_to schmarticles_path
  end
end
