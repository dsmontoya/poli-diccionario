require 'test_helper'

class BuscarControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get unidades" do
    get :unidades
    assert_response :success
  end

  test "should get carreras" do
    get :carreras
    assert_response :success
  end

  test "should get materias" do
    get :materias
    assert_response :success
  end

  test "should get profesores" do
    get :profesores
    assert_response :success
  end

  test "should get terminos" do
    get :terminos
    assert_response :success
  end

end
