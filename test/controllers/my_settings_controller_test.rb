require "test_helper"

class MySettingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @my_setting = my_settings(:one)
  end

  test "should get index" do
    get my_settings_url
    assert_response :success
  end

  test "should get new" do
    get new_my_setting_url
    assert_response :success
  end

  test "should create my_setting" do
    assert_difference('MySetting.count') do
      post my_settings_url, params: { my_setting: { happiness_bar: @my_setting.happiness_bar, theme_color: @my_setting.theme_color } }
    end

    assert_redirected_to my_setting_url(MySetting.last)
  end

  test "should show my_setting" do
    get my_setting_url(@my_setting)
    assert_response :success
  end

  test "should get edit" do
    get edit_my_setting_url(@my_setting)
    assert_response :success
  end

  test "should update my_setting" do
    patch my_setting_url(@my_setting), params: { my_setting: { happiness_bar: @my_setting.happiness_bar, theme_color: @my_setting.theme_color } }
    assert_redirected_to my_setting_url(@my_setting)
  end

  test "should destroy my_setting" do
    assert_difference('MySetting.count', -1) do
      delete my_setting_url(@my_setting)
    end

    assert_redirected_to my_settings_url
  end
end
