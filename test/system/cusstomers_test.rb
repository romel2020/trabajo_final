require "application_system_test_case"

class CusstomersTest < ApplicationSystemTestCase
  setup do
    @cusstomer = cusstomers(:one)
  end

  test "visiting the index" do
    visit cusstomers_url
    assert_selector "h1", text: "Cusstomers"
  end

  test "creating a Cusstomer" do
    visit cusstomers_url
    click_on "New Cusstomer"

    fill_in "Compañy size", with: @cusstomer.compañy_size
    fill_in "Doc month", with: @cusstomer.doc_month
    fill_in "Email", with: @cusstomer.email
    fill_in "Help you", with: @cusstomer.help_you
    fill_in "Last name", with: @cusstomer.last_name
    fill_in "Name", with: @cusstomer.name
    fill_in "Phone", with: @cusstomer.phone
    fill_in "Profile", with: @cusstomer.profile
    fill_in "Rut", with: @cusstomer.rut
    click_on "Create Cusstomer"

    assert_text "Cusstomer was successfully created"
    click_on "Back"
  end

  test "updating a Cusstomer" do
    visit cusstomers_url
    click_on "Edit", match: :first

    fill_in "Compañy size", with: @cusstomer.compañy_size
    fill_in "Doc month", with: @cusstomer.doc_month
    fill_in "Email", with: @cusstomer.email
    fill_in "Help you", with: @cusstomer.help_you
    fill_in "Last name", with: @cusstomer.last_name
    fill_in "Name", with: @cusstomer.name
    fill_in "Phone", with: @cusstomer.phone
    fill_in "Profile", with: @cusstomer.profile
    fill_in "Rut", with: @cusstomer.rut
    click_on "Update Cusstomer"

    assert_text "Cusstomer was successfully updated"
    click_on "Back"
  end

  test "destroying a Cusstomer" do
    visit cusstomers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cusstomer was successfully destroyed"
  end
end
