require 'test_helper'

class CusstomersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cusstomer = cusstomers(:one)
  end

  test "should get index" do
    get cusstomers_url
    assert_response :success
  end

  test "should get new" do
    get new_cusstomer_url
    assert_response :success
  end

  test "should create cusstomer" do
    assert_difference('Cusstomer.count') do
      post cusstomers_url, params: { cusstomer: { compañy_size: @cusstomer.compañy_size, doc_month: @cusstomer.doc_month, email: @cusstomer.email, help_you: @cusstomer.help_you, last_name: @cusstomer.last_name, name: @cusstomer.name, phone: @cusstomer.phone, profile: @cusstomer.profile, rut: @cusstomer.rut } }
    end

    assert_redirected_to cusstomer_url(Cusstomer.last)
  end

  test "should show cusstomer" do
    get cusstomer_url(@cusstomer)
    assert_response :success
  end

  test "should get edit" do
    get edit_cusstomer_url(@cusstomer)
    assert_response :success
  end

  test "should update cusstomer" do
    patch cusstomer_url(@cusstomer), params: { cusstomer: { compañy_size: @cusstomer.compañy_size, doc_month: @cusstomer.doc_month, email: @cusstomer.email, help_you: @cusstomer.help_you, last_name: @cusstomer.last_name, name: @cusstomer.name, phone: @cusstomer.phone, profile: @cusstomer.profile, rut: @cusstomer.rut } }
    assert_redirected_to cusstomer_url(@cusstomer)
  end

  test "should destroy cusstomer" do
    assert_difference('Cusstomer.count', -1) do
      delete cusstomer_url(@cusstomer)
    end

    assert_redirected_to cusstomers_url
  end
end
