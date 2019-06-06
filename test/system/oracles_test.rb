require "application_system_test_case"

class OraclesTest < ApplicationSystemTestCase
  setup do
    @oracle = oracles(:one)
  end

  test "visiting the index" do
    visit oracles_url
    assert_selector "h1", text: "Oracles"
  end

  test "creating a Oracle" do
    visit oracles_url
    click_on "New Oracle"

    fill_in "Email", with: @oracle.email
    fill_in "Name", with: @oracle.name
    click_on "Create Oracle"

    assert_text "Oracle was successfully created"
    click_on "Back"
  end

  test "updating a Oracle" do
    visit oracles_url
    click_on "Edit", match: :first

    fill_in "Email", with: @oracle.email
    fill_in "Name", with: @oracle.name
    click_on "Update Oracle"

    assert_text "Oracle was successfully updated"
    click_on "Back"
  end

  test "destroying a Oracle" do
    visit oracles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Oracle was successfully destroyed"
  end
end
