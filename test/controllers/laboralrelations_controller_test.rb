require 'test_helper'

class LaboralrelationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @laboralrelation = laboralrelations(:one)
  end

  test "should get index" do
    get laboralrelations_url
    assert_response :success
  end

  test "should get new" do
    get new_laboralrelation_url
    assert_response :success
  end

  test "should create laboralrelation" do
    assert_difference('Laboralrelation.count') do
      post laboralrelations_url, params: { laboralrelation: { base_salary: @laboralrelation.base_salary, date_finish: @laboralrelation.date_finish, date_ini: @laboralrelation.date_ini, status: @laboralrelation.status, undefined: @laboralrelation.undefined } }
    end

    assert_redirected_to laboralrelation_url(Laboralrelation.last)
  end

  test "should show laboralrelation" do
    get laboralrelation_url(@laboralrelation)
    assert_response :success
  end

  test "should get edit" do
    get edit_laboralrelation_url(@laboralrelation)
    assert_response :success
  end

  test "should update laboralrelation" do
    patch laboralrelation_url(@laboralrelation), params: { laboralrelation: { base_salary: @laboralrelation.base_salary, date_finish: @laboralrelation.date_finish, date_ini: @laboralrelation.date_ini, status: @laboralrelation.status, undefined: @laboralrelation.undefined } }
    assert_redirected_to laboralrelation_url(@laboralrelation)
  end

  test "should destroy laboralrelation" do
    assert_difference('Laboralrelation.count', -1) do
      delete laboralrelation_url(@laboralrelation)
    end

    assert_redirected_to laboralrelations_url
  end
end
