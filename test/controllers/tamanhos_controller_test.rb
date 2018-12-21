require 'test_helper'

class TamanhosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tamanho = tamanhos(:one)
  end

  test "should get index" do
    get tamanhos_url
    assert_response :success
  end

  test "should get new" do
    get new_tamanho_url
    assert_response :success
  end

  test "should create tamanho" do
    assert_difference('Tamanho.count') do
      post tamanhos_url, params: { tamanho: { numero: @tamanho.numero } }
    end

    assert_redirected_to tamanho_url(Tamanho.last)
  end

  test "should show tamanho" do
    get tamanho_url(@tamanho)
    assert_response :success
  end

  test "should get edit" do
    get edit_tamanho_url(@tamanho)
    assert_response :success
  end

  test "should update tamanho" do
    patch tamanho_url(@tamanho), params: { tamanho: { numero: @tamanho.numero } }
    assert_redirected_to tamanho_url(@tamanho)
  end

  test "should destroy tamanho" do
    assert_difference('Tamanho.count', -1) do
      delete tamanho_url(@tamanho)
    end

    assert_redirected_to tamanhos_url
  end
end
