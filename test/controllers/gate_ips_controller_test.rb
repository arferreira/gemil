require 'test_helper'

class GateIpsControllerTest < ActionController::TestCase
  setup do
    @gate_ip = gate_ips(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gate_ips)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gate_ip" do
    assert_difference('GateIp.count') do
      post :create, gate_ip: { portao_biga: @gate_ip.portao_biga, portao_id: @gate_ip.portao_id, portao_ip: @gate_ip.portao_ip, portao_nome: @gate_ip.portao_nome }
    end

    assert_redirected_to gate_ip_path(assigns(:gate_ip))
  end

  test "should show gate_ip" do
    get :show, id: @gate_ip
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gate_ip
    assert_response :success
  end

  test "should update gate_ip" do
    patch :update, id: @gate_ip, gate_ip: { portao_biga: @gate_ip.portao_biga, portao_id: @gate_ip.portao_id, portao_ip: @gate_ip.portao_ip, portao_nome: @gate_ip.portao_nome }
    assert_redirected_to gate_ip_path(assigns(:gate_ip))
  end

  test "should destroy gate_ip" do
    assert_difference('GateIp.count', -1) do
      delete :destroy, id: @gate_ip
    end

    assert_redirected_to gate_ips_path
  end
end
