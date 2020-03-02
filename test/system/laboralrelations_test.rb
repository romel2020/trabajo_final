require "application_system_test_case"

class LaboralrelationsTest < ApplicationSystemTestCase
  setup do
    @laboralrelation = laboralrelations(:one)
  end

  test "visiting the index" do
    visit laboralrelations_url
    assert_selector "h1", text: "Laboralrelations"
  end

  test "creating a Laboralrelation" do
    visit laboralrelations_url
    click_on "New Laboralrelation"

    fill_in "Base salary", with: @laboralrelation.base_salary
    fill_in "Date finish", with: @laboralrelation.date_finish
    fill_in "Date ini", with: @laboralrelation.date_ini
    fill_in "Status", with: @laboralrelation.status
    check "Undefined" if @laboralrelation.undefined
    click_on "Create Laboralrelation"

    assert_text "Laboralrelation was successfully created"
    click_on "Back"
  end

  test "updating a Laboralrelation" do
    visit laboralrelations_url
    click_on "Edit", match: :first

    fill_in "Base salary", with: @laboralrelation.base_salary
    fill_in "Date finish", with: @laboralrelation.date_finish
    fill_in "Date ini", with: @laboralrelation.date_ini
    fill_in "Status", with: @laboralrelation.status
    check "Undefined" if @laboralrelation.undefined
    click_on "Update Laboralrelation"

    assert_text "Laboralrelation was successfully updated"
    click_on "Back"
  end

  test "destroying a Laboralrelation" do
    visit laboralrelations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Laboralrelation was successfully destroyed"
  end
end
