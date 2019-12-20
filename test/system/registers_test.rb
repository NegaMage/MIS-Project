require "application_system_test_case"

class RegistersTest < ApplicationSystemTestCase
  setup do
    @register = registers(:one)
  end

  test "visiting the index" do
    visit registers_url
    assert_selector "h1", text: "Registers"
  end

  test "creating a Register" do
    visit registers_url
    click_on "New Register"

    fill_in "Deadline", with: @register.deadline
    fill_in "First reminder", with: @register.first_reminder
    fill_in "No of reminders", with: @register.no_of_reminders
    fill_in "Register type", with: @register.register_type
    fill_in "Reminder email", with: @register.reminder_email
    fill_in "Reminder period", with: @register.reminder_period
    click_on "Create Register"

    assert_text "Register was successfully created"
    click_on "Back"
  end

  test "updating a Register" do
    visit registers_url
    click_on "Edit", match: :first

    fill_in "Deadline", with: @register.deadline
    fill_in "First reminder", with: @register.first_reminder
    fill_in "No of reminders", with: @register.no_of_reminders
    fill_in "Register type", with: @register.register_type
    fill_in "Reminder email", with: @register.reminder_email
    fill_in "Reminder period", with: @register.reminder_period
    click_on "Update Register"

    assert_text "Register was successfully updated"
    click_on "Back"
  end

  test "destroying a Register" do
    visit registers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Register was successfully destroyed"
  end
end
