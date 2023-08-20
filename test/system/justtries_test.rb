require "application_system_test_case"

class JusttriesTest < ApplicationSystemTestCase
  setup do
    @justtry = justtries(:one)
  end

  test "visiting the index" do
    visit justtries_url
    assert_selector "h1", text: "Justtries"
  end

  test "should create justtry" do
    visit justtries_url
    click_on "New justtry"

    fill_in "Test", with: @justtry.test
    fill_in "Trying", with: @justtry.trying
    click_on "Create Justtry"

    assert_text "Justtry was successfully created"
    click_on "Back"
  end

  test "should update Justtry" do
    visit justtry_url(@justtry)
    click_on "Edit this justtry", match: :first

    fill_in "Test", with: @justtry.test
    fill_in "Trying", with: @justtry.trying
    click_on "Update Justtry"

    assert_text "Justtry was successfully updated"
    click_on "Back"
  end

  test "should destroy Justtry" do
    visit justtry_url(@justtry)
    click_on "Destroy this justtry", match: :first

    assert_text "Justtry was successfully destroyed"
  end
end
