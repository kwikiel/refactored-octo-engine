require "application_system_test_case"

class NetworthsTest < ApplicationSystemTestCase
  setup do
    @networth = networths(:one)
  end

  test "visiting the index" do
    visit networths_url
    assert_selector "h1", text: "Networths"
  end

  test "creating a Networth" do
    visit networths_url
    click_on "New Networth"

    fill_in "Date", with: @networth.date
    fill_in "Value", with: @networth.value
    click_on "Create Networth"

    assert_text "Networth was successfully created"
    click_on "Back"
  end

  test "updating a Networth" do
    visit networths_url
    click_on "Edit", match: :first

    fill_in "Date", with: @networth.date
    fill_in "Value", with: @networth.value
    click_on "Update Networth"

    assert_text "Networth was successfully updated"
    click_on "Back"
  end

  test "destroying a Networth" do
    visit networths_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Networth was successfully destroyed"
  end
end
