require 'test_helper'

class DireitoEmpresarialsControllerTest < ActionController::TestCase
  setup do
    @direito_empresarial = direito_empresarials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:direito_empresarials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create direito_empresarial" do
    assert_difference('DireitoEmpresarial.count') do
      post :create, direito_empresarial: { autor: @direito_empresarial.autor, conteudo: @direito_empresarial.conteudo, data: @direito_empresarial.data, titulo: @direito_empresarial.titulo }
    end

    assert_redirected_to direito_empresarial_path(assigns(:direito_empresarial))
  end

  test "should show direito_empresarial" do
    get :show, id: @direito_empresarial
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @direito_empresarial
    assert_response :success
  end

  test "should update direito_empresarial" do
    put :update, id: @direito_empresarial, direito_empresarial: { autor: @direito_empresarial.autor, conteudo: @direito_empresarial.conteudo, data: @direito_empresarial.data, titulo: @direito_empresarial.titulo }
    assert_redirected_to direito_empresarial_path(assigns(:direito_empresarial))
  end

  test "should destroy direito_empresarial" do
    assert_difference('DireitoEmpresarial.count', -1) do
      delete :destroy, id: @direito_empresarial
    end

    assert_redirected_to direito_empresarials_path
  end
end
