require 'test_helper'

class PostoGraduacaosControllerTest < ActionController::TestCase
  setup do
    @posto_graduacao = posto_graduacaos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:posto_graduacaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create posto_graduacao" do
    assert_difference('PostoGraduacao.count') do
      post :create, posto_graduacao: { name: @posto_graduacao.name }
    end

    assert_redirected_to posto_graduacao_path(assigns(:posto_graduacao))
  end

  test "should show posto_graduacao" do
    get :show, id: @posto_graduacao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @posto_graduacao
    assert_response :success
  end

  test "should update posto_graduacao" do
    patch :update, id: @posto_graduacao, posto_graduacao: { name: @posto_graduacao.name }
    assert_redirected_to posto_graduacao_path(assigns(:posto_graduacao))
  end

  test "should destroy posto_graduacao" do
    assert_difference('PostoGraduacao.count', -1) do
      delete :destroy, id: @posto_graduacao
    end

    assert_redirected_to posto_graduacaos_path
  end
end
