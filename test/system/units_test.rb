require "application_system_test_case"

class UnitsTest < ApplicationSystemTestCase
  setup do
    @unit = units(:one)
  end

  test "visiting the index" do
    visit units_url
    assert_selector "h1", text: "Units"
  end

  test "creating a Unit" do
    visit units_url
    click_on "New Unit"

    fill_in "Address", with: @unit.address
    fill_in "Audit section", with: @unit.audit_section
    fill_in "Category", with: @unit.category
    fill_in "Email", with: @unit.email
    fill_in "Fax", with: @unit.fax
    fill_in "Ministry", with: @unit.ministry
    fill_in "Oc", with: @unit.oc
    fill_in "Office acronym", with: @unit.office_acronym
    fill_in "Office name", with: @unit.office_name
    fill_in "Phone", with: @unit.phone
    fill_in "Remarks", with: @unit.remarks
    fill_in "Utyp", with: @unit.utyp
    click_on "Create Unit"

    assert_text "Unit was successfully created"
    click_on "Back"
  end

  test "updating a Unit" do
    visit units_url
    click_on "Edit", match: :first

    fill_in "Address", with: @unit.address
    fill_in "Audit section", with: @unit.audit_section
    fill_in "Category", with: @unit.category
    fill_in "Email", with: @unit.email
    fill_in "Fax", with: @unit.fax
    fill_in "Ministry", with: @unit.ministry
    fill_in "Oc", with: @unit.oc
    fill_in "Office acronym", with: @unit.office_acronym
    fill_in "Office name", with: @unit.office_name
    fill_in "Phone", with: @unit.phone
    fill_in "Remarks", with: @unit.remarks
    fill_in "Utyp", with: @unit.utyp
    click_on "Update Unit"

    assert_text "Unit was successfully updated"
    click_on "Back"
  end

  test "destroying a Unit" do
    visit units_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Unit was successfully destroyed"
  end
end
