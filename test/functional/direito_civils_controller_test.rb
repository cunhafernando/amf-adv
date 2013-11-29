require 'test_helper'

class DireitoCivilsControllerTest < ActionController::TestCase
  setup do
    @direito_civil = direito_civils(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:direito_civils)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create direito_civil" do
    assert_difference('DireitoCivil.count') do
      post :create, direito_civil: { autor: @direito_civil.autor, conteudo: @direito_civil.conteudo, data: @direito_civil.data, titulo: @direito_civil.titulo }
    end

    assert_redirected_to direito_civil_path(assigns(:direito_civil))
  end

  test "should show direito_civil" do
    get :show, id: @direito_civil
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @direito_civil
    assert_response :success
  end

  test "should update direito_civil" do
    put :update, id: @direito_civil, direito_civil: { autor: @direito_civil.autor, conteudo: @direito_civil.conteudo, data: @direito_civil.data, titulo: @direito_civil.titulo }
    assert_redirected_to direito_civil_path(assigns(:direito_civil))
  end

  test "should destroy direito_civil" do
    assert_difference('DireitoCivil.count', -1) do
      delete :destroy, id: @direito_civil
    end

    assert_redirected_to direito_civils_path
  end
end
