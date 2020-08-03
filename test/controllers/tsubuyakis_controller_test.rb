require 'test_helper'

class TsubuyakisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tsubuyaki = tsubuyakis(:one)
  end

  test "should get index" do
    get tsubuyakis_url
    assert_response :success
  end

  test "should get new" do
    get new_tsubuyaki_url
    assert_response :success
  end

  test "should create tsubuyaki" do
    assert_difference('Tsubuyaki.count') do
      post tsubuyakis_url, params: { tsubuyaki: {  } }
    end

    assert_redirected_to tsubuyaki_url(Tsubuyaki.last)
  end

  test "should show tsubuyaki" do
    get tsubuyaki_url(@tsubuyaki)
    assert_response :success
  end

  test "should get edit" do
    get edit_tsubuyaki_url(@tsubuyaki)
    assert_response :success
  end

  test "should update tsubuyaki" do
    patch tsubuyaki_url(@tsubuyaki), params: { tsubuyaki: {  } }
    assert_redirected_to tsubuyaki_url(@tsubuyaki)
  end

  test "should destroy tsubuyaki" do
    assert_difference('Tsubuyaki.count', -1) do
      delete tsubuyaki_url(@tsubuyaki)
    end

    assert_redirected_to tsubuyakis_url
  end
end
