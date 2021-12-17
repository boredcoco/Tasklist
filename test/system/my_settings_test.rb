require "application_system_test_case"

class MySettingsTest < ApplicationSystemTestCase
  setup do
    @my_setting = my_settings(:one)
  end

  test "visiting the index" do
    visit my_settings_url
    assert_selector "h1", text: "My Settings"
  end

  test "creating a My setting" do
    visit my_settings_url
    click_on "New My Setting"

    fill_in "Happiness bar", with: @my_setting.happiness_bar
    fill_in "Theme color", with: @my_setting.theme_color
    click_on "Create My setting"

    assert_text "My setting was successfully created"
    click_on "Back"
  end

  test "updating a My setting" do
    visit my_settings_url
    click_on "Edit", match: :first

    fill_in "Happiness bar", with: @my_setting.happiness_bar
    fill_in "Theme color", with: @my_setting.theme_color
    click_on "Update My setting"

    assert_text "My setting was successfully updated"
    click_on "Back"
  end

  test "destroying a My setting" do
    visit my_settings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "My setting was successfully destroyed"
  end
end
