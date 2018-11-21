require "application_system_test_case"

class StudiosTest < ApplicationSystemTestCase
  setup do
    @studio = studios(:one)
  end

  test "visiting the index" do
    visit studios_url
    assert_selector "h1", text: "Studios"
  end

  test "creating a Studio" do
    visit studios_url
    click_on "New Studio"

    fill_in "Description", with: @studio.description
    fill_in "Logotype", with: @studio.logotype
    fill_in "Name", with: @studio.name
    click_on "Create Studio"

    assert_text "Studio was successfully created"
    click_on "Back"
  end

  test "updating a Studio" do
    visit studios_url
    click_on "Edit", match: :first

    fill_in "Description", with: @studio.description
    fill_in "Logotype", with: @studio.logotype
    fill_in "Name", with: @studio.name
    click_on "Update Studio"

    assert_text "Studio was successfully updated"
    click_on "Back"
  end

  test "destroying a Studio" do
    visit studios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Studio was successfully destroyed"
  end
end
