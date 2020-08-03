require "application_system_test_case"

class TsubuyakisTest < ApplicationSystemTestCase
  setup do
    @tsubuyaki = tsubuyakis(:one)
  end

  test "visiting the index" do
    visit tsubuyakis_url
    assert_selector "h1", text: "Tsubuyakis"
  end

  test "creating a Tsubuyaki" do
    visit tsubuyakis_url
    click_on "New Tsubuyaki"

    click_on "Create Tsubuyaki"

    assert_text "Tsubuyaki was successfully created"
    click_on "Back"
  end

  test "updating a Tsubuyaki" do
    visit tsubuyakis_url
    click_on "Edit", match: :first

    click_on "Update Tsubuyaki"

    assert_text "Tsubuyaki was successfully updated"
    click_on "Back"
  end

  test "destroying a Tsubuyaki" do
    visit tsubuyakis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tsubuyaki was successfully destroyed"
  end
end
