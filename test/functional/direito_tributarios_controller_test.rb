require 'test_helper'

class DireitoTributariosControllerTest < ActionController::TestCase
  setup do
    @direito_tributario = direito_tributarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:direito_tributarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create direito_tributario" do
    assert_difference('DireitoTributario.count') do
      post :create, direito_tributario: { autor: @direito_tributario.autor, conteudo: @direito_tributario.conteudo, data: @direito_tributario.data, titulo: @direito_tributario.titulo }
    end

    assert_redirected_to direito_tributario_path(assigns(:direito_tributario))
  end

  test "should show direito_tributario" do
    get :show, id: @direito_tributario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @direito_tributario
    assert_response :success
  end

  test "should update direito_tributario" do
    put :update, id: @direito_tributario, direito_tributario: { autor: @direito_tributario.autor, conteudo: @direito_tributario.conteudo, data: @direito_tributario.data, titulo: @direito_tributario.titulo }
    assert_redirected_to direito_tributario_path(assigns(:direito_tributario))
  end

  test "should destroy direito_tributario" do
    assert_difference('DireitoTributario.count', -1) do
      delete :destroy, id: @direito_tributario
    end

    assert_redirected_to direito_tributarios_path
  end
end
