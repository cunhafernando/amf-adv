require 'test_helper'

class DecisaosControllerTest < ActionController::TestCase
  setup do
    @decisao = decisaos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:decisaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create decisao" do
    assert_difference('Decisao.count') do
      post :create, decisao: { autor: @decisao.autor, conteudo: @decisao.conteudo, data: @decisao.data, titulo: @decisao.titulo }
    end

    assert_redirected_to decisao_path(assigns(:decisao))
  end

  test "should show decisao" do
    get :show, id: @decisao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @decisao
    assert_response :success
  end

  test "should update decisao" do
    put :update, id: @decisao, decisao: { autor: @decisao.autor, conteudo: @decisao.conteudo, data: @decisao.data, titulo: @decisao.titulo }
    assert_redirected_to decisao_path(assigns(:decisao))
  end

  test "should destroy decisao" do
    assert_difference('Decisao.count', -1) do
      delete :destroy, id: @decisao
    end

    assert_redirected_to decisaos_path
  end
end
