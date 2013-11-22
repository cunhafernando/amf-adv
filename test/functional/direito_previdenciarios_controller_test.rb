require 'test_helper'

class DireitoPrevidenciariosControllerTest < ActionController::TestCase
  setup do
    @direito_previdenciario = direito_previdenciarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:direito_previdenciarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create direito_previdenciario" do
    assert_difference('DireitoPrevidenciario.count') do
      post :create, direito_previdenciario: { autor: @direito_previdenciario.autor, conteudo: @direito_previdenciario.conteudo, data: @direito_previdenciario.data, titulo: @direito_previdenciario.titulo }
    end

    assert_redirected_to direito_previdenciario_path(assigns(:direito_previdenciario))
  end

  test "should show direito_previdenciario" do
    get :show, id: @direito_previdenciario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @direito_previdenciario
    assert_response :success
  end

  test "should update direito_previdenciario" do
    put :update, id: @direito_previdenciario, direito_previdenciario: { autor: @direito_previdenciario.autor, conteudo: @direito_previdenciario.conteudo, data: @direito_previdenciario.data, titulo: @direito_previdenciario.titulo }
    assert_redirected_to direito_previdenciario_path(assigns(:direito_previdenciario))
  end

  test "should destroy direito_previdenciario" do
    assert_difference('DireitoPrevidenciario.count', -1) do
      delete :destroy, id: @direito_previdenciario
    end

    assert_redirected_to direito_previdenciarios_path
  end
end
