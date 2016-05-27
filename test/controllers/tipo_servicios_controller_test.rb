require 'test_helper'

class TipoServiciosControllerTest < ActionController::TestCase
  setup do
    @tipo_servicio = tipo_servicios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_servicios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_servicio" do
    assert_difference('TipoServicio.count') do
      post :create, tipo_servicio: { descripcion: @tipo_servicio.descripcion, nombre: @tipo_servicio.nombre }
    end

    assert_redirected_to tipo_servicio_path(assigns(:tipo_servicio))
  end

  test "should show tipo_servicio" do
    get :show, id: @tipo_servicio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_servicio
    assert_response :success
  end

  test "should update tipo_servicio" do
    patch :update, id: @tipo_servicio, tipo_servicio: { descripcion: @tipo_servicio.descripcion, nombre: @tipo_servicio.nombre }
    assert_redirected_to tipo_servicio_path(assigns(:tipo_servicio))
  end

  test "should destroy tipo_servicio" do
    assert_difference('TipoServicio.count', -1) do
      delete :destroy, id: @tipo_servicio
    end

    assert_redirected_to tipo_servicios_path
  end
end
