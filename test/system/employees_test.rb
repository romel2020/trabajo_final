require "application_system_test_case"

class EmployeesTest < ApplicationSystemTestCase
  setup do
    @employee = employees(:one)
  end

  test "visiting the index" do
    visit employees_url
    assert_selector "h1", text: "Employees"
  end

  test "creating a Employee" do
    visit employees_url
    click_on "New Employee"

    fill_in "Address", with: @employee.address
    fill_in "Charges", with: @employee.charges
    fill_in "Date ini", with: @employee.date_ini
    fill_in "Email", with: @employee.email
    fill_in "Father name", with: @employee.father_name
    fill_in "Mother name", with: @employee.mother_name
    fill_in "Name", with: @employee.name
    fill_in "Nationality", with: @employee.nationality
    fill_in "Phone", with: @employee.phone
    fill_in "Phone fix", with: @employee.phone_fix
    fill_in "Rut", with: @employee.rut
    fill_in "Sexo", with: @employee.sexo
    click_on "Create Employee"

    assert_text "Employee was successfully created"
    click_on "Back"
  end

  test "updating a Employee" do
    visit employees_url
    click_on "Edit", match: :first

    fill_in "Address", with: @employee.address
    fill_in "Charges", with: @employee.charges
    fill_in "Date ini", with: @employee.date_ini
    fill_in "Email", with: @employee.email
    fill_in "Father name", with: @employee.father_name
    fill_in "Mother name", with: @employee.mother_name
    fill_in "Name", with: @employee.name
    fill_in "Nationality", with: @employee.nationality
    fill_in "Phone", with: @employee.phone
    fill_in "Phone fix", with: @employee.phone_fix
    fill_in "Rut", with: @employee.rut
    fill_in "Sexo", with: @employee.sexo
    click_on "Update Employee"

    assert_text "Employee was successfully updated"
    click_on "Back"
  end

  test "destroying a Employee" do
    visit employees_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employee was successfully destroyed"
  end
end
