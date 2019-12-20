require 'test_helper'

class RegistersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @register = registers(:one)
  end

  test "should get index" do
    get registers_url
    assert_response :success
  end

  test "should get new" do
    get new_register_url
    assert_response :success
  end

  test "should create register" do
    assert_difference('Register.count') do
      post registers_url, params: { register: { deadline: @register.deadline, first_reminder: @register.first_reminder, no_of_reminders: @register.no_of_reminders, register_type: @register.register_type, reminder_email: @register.reminder_email, reminder_period: @register.reminder_period } }
    end

    assert_redirected_to register_url(Register.last)
  end

  test "should show register" do
    get register_url(@register)
    assert_response :success
  end

  test "should get edit" do
    get edit_register_url(@register)
    assert_response :success
  end

  test "should update register" do
    patch register_url(@register), params: { register: { deadline: @register.deadline, first_reminder: @register.first_reminder, no_of_reminders: @register.no_of_reminders, register_type: @register.register_type, reminder_email: @register.reminder_email, reminder_period: @register.reminder_period } }
    assert_redirected_to register_url(@register)
  end

  test "should destroy register" do
    assert_difference('Register.count', -1) do
      delete register_url(@register)
    end

    assert_redirected_to registers_url
  end
end
