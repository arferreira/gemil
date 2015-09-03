require 'test_helper'

class GraduationsControllerTest < ActionController::TestCase
  setup do
    @graduation = graduations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:graduations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create graduation" do
    assert_difference('Graduation.count') do
      post :create, graduation: { pgabrev1: @graduation.pgabrev1, pgabrev: @graduation.pgabrev, pgabrevtdp: @graduation.pgabrevtdp, pgclasse: @graduation.pgclasse, pgdesc: @graduation.pgdesc, pggrupo1: @graduation.pggrupo1, pggrupo2: @graduation.pggrupo2, pggrupotdp: @graduation.pggrupotdp, pgid: @graduation.pgid, pgpronome2: @graduation.pgpronome2, pgpronome: @graduation.pgpronome, pgrefeitorio: @graduation.pgrefeitorio }
    end

    assert_redirected_to graduation_path(assigns(:graduation))
  end

  test "should show graduation" do
    get :show, id: @graduation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @graduation
    assert_response :success
  end

  test "should update graduation" do
    patch :update, id: @graduation, graduation: { pgabrev1: @graduation.pgabrev1, pgabrev: @graduation.pgabrev, pgabrevtdp: @graduation.pgabrevtdp, pgclasse: @graduation.pgclasse, pgdesc: @graduation.pgdesc, pggrupo1: @graduation.pggrupo1, pggrupo2: @graduation.pggrupo2, pggrupotdp: @graduation.pggrupotdp, pgid: @graduation.pgid, pgpronome2: @graduation.pgpronome2, pgpronome: @graduation.pgpronome, pgrefeitorio: @graduation.pgrefeitorio }
    assert_redirected_to graduation_path(assigns(:graduation))
  end

  test "should destroy graduation" do
    assert_difference('Graduation.count', -1) do
      delete :destroy, id: @graduation
    end

    assert_redirected_to graduations_path
  end
end
