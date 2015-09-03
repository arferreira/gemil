require 'test_helper'

class QuadrosControllerTest < ActionController::TestCase
  setup do
    @quadro = quadros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:quadros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create quadro" do
    assert_difference('Quadro.count') do
      post :create, quadro: { nome: @quadro.nome }
    end

    assert_redirected_to quadro_path(assigns(:quadro))
  end

  test "should show quadro" do
    get :show, id: @quadro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @quadro
    assert_response :success
  end

  test "should update quadro" do
    patch :update, id: @quadro, quadro: { nome: @quadro.nome }
    assert_redirected_to quadro_path(assigns(:quadro))
  end

  test "should destroy quadro" do
    assert_difference('Quadro.count', -1) do
      delete :destroy, id: @quadro
    end

    assert_redirected_to quadros_path
  end
end
