require 'test_helper'

class DependentsControllerTest < ActionController::TestCase
  setup do
    @dependent = dependents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dependents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dependent" do
    assert_difference('Dependent.count') do
      post :create, dependent: { pes_cracha_id: @dependent.pes_cracha_id, pes_cracha_val: @dependent.pes_cracha_val, pescodigo: @dependent.pescodigo, pesdepboletimdata: @dependent.pesdepboletimdata, pesdepboletimnum: @dependent.pesdepboletimnum, pesdepdatacad: @dependent.pesdepdatacad, pesdepdatacas: @dependent.pesdepdatacas, pesdepdn: @dependent.pesdepdn, pesdepgrau: @dependent.pesdepgrau, pesdepid: @dependent.pesdepid, pesdepirrf: @dependent.pesdepirrf, pesdepnome: @dependent.pesdepnome, pesdepompub: @dependent.pesdepompub, pesdeppesid: @dependent.pesdeppesid, pesdepradiodata: @dependent.pesdepradiodata, pesdepradionum: @dependent.pesdepradionum, pesdepsexo: @dependent.pesdepsexo, pesdeptipo: @dependent.pesdeptipo, pesdeptiposaram: @dependent.pesdeptiposaram, pesdepuser: @dependent.pesdepuser }
    end

    assert_redirected_to dependent_path(assigns(:dependent))
  end

  test "should show dependent" do
    get :show, id: @dependent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dependent
    assert_response :success
  end

  test "should update dependent" do
    patch :update, id: @dependent, dependent: { pes_cracha_id: @dependent.pes_cracha_id, pes_cracha_val: @dependent.pes_cracha_val, pescodigo: @dependent.pescodigo, pesdepboletimdata: @dependent.pesdepboletimdata, pesdepboletimnum: @dependent.pesdepboletimnum, pesdepdatacad: @dependent.pesdepdatacad, pesdepdatacas: @dependent.pesdepdatacas, pesdepdn: @dependent.pesdepdn, pesdepgrau: @dependent.pesdepgrau, pesdepid: @dependent.pesdepid, pesdepirrf: @dependent.pesdepirrf, pesdepnome: @dependent.pesdepnome, pesdepompub: @dependent.pesdepompub, pesdeppesid: @dependent.pesdeppesid, pesdepradiodata: @dependent.pesdepradiodata, pesdepradionum: @dependent.pesdepradionum, pesdepsexo: @dependent.pesdepsexo, pesdeptipo: @dependent.pesdeptipo, pesdeptiposaram: @dependent.pesdeptiposaram, pesdepuser: @dependent.pesdepuser }
    assert_redirected_to dependent_path(assigns(:dependent))
  end

  test "should destroy dependent" do
    assert_difference('Dependent.count', -1) do
      delete :destroy, id: @dependent
    end

    assert_redirected_to dependents_path
  end
end
