require "application_system_test_case"

class GhostsTest < ApplicationSystemTestCase
  setup do
    @ghost = ghosts(:one)
  end

  test "visiting the index" do
    visit ghosts_url
    assert_selector "h1", text: "Ghosts"
  end

  test "creating a Ghost" do
    visit ghosts_url
    click_on "New Ghost"

    fill_in "Age", with: @ghost.age
    fill_in "Name", with: @ghost.name
    fill_in "Volume", with: @ghost.volume
    click_on "Create Ghost"

    assert_text "Ghost was successfully created"
    click_on "Back"
  end

  test "updating a Ghost" do
    visit ghosts_url
    click_on "Edit", match: :first

    fill_in "Age", with: @ghost.age
    fill_in "Name", with: @ghost.name
    fill_in "Volume", with: @ghost.volume
    click_on "Update Ghost"

    assert_text "Ghost was successfully updated"
    click_on "Back"
  end

  test "destroying a Ghost" do
    visit ghosts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ghost was successfully destroyed"
  end
end
