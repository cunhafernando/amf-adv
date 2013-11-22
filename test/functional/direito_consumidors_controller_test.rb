require 'test_helper'

class DireitoConsumidorsControllerTest < ActionController::TestCase
  setup do
    @direito_consumidor = direito_consumidors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:direito_consumidors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create direito_consumidor" do
    assert_difference('DireitoConsumidor.count') do
      post :create, direito_consumidor: { autor: @direito_consumidor.autor, conteudo: @direito_consumidor.conteudo, data: @direito_consumidor.data, titulo: @direito_consumidor.titulo }
    end

    assert_redirected_to direito_consumidor_path(assigns(:direito_consumidor))
  end

  test "should show direito_consumidor" do
    get :show, id: @direito_consumidor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @direito_consumidor
    assert_response :success
  end

  test "should update direito_consumidor" do
    put :update, id: @direito_consumidor, direito_consumidor: { autor: @direito_consumidor.autor, conteudo: @direito_consumidor.conteudo, data: @direito_consumidor.data, titulo: @direito_consumidor.titulo }
    assert_redirected_to direito_consumidor_path(assigns(:direito_consumidor))
  end

  test "should destroy direito_consumidor" do
    assert_difference('DireitoConsumidor.count', -1) do
      delete :destroy, id: @direito_consumidor
    end

    assert_redirected_to direito_consumidors_path
  end
end
