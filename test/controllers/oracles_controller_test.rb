require 'test_helper'

class OraclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @oracle = oracles(:one)
  end

  test "should get index" do
    get oracles_url
    assert_response :success
  end

  test "should get new" do
    get new_oracle_url
    assert_response :success
  end

  test "should create oracle" do
    assert_difference('Oracle.count') do
      post oracles_url, params: { oracle: { email: @oracle.email, name: @oracle.name } }
    end

    assert_redirected_to oracle_url(Oracle.last)
  end

  test "should show oracle" do
    get oracle_url(@oracle)
    assert_response :success
  end

  test "should get edit" do
    get edit_oracle_url(@oracle)
    assert_response :success
  end

  test "should update oracle" do
    patch oracle_url(@oracle), params: { oracle: { email: @oracle.email, name: @oracle.name } }
    assert_redirected_to oracle_url(@oracle)
  end

  test "should destroy oracle" do
    assert_difference('Oracle.count', -1) do
      delete oracle_url(@oracle)
    end

    assert_redirected_to oracles_url
  end
end
