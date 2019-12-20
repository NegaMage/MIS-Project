json.extract! register, :id, :register_type, :deadline, :first_reminder, :no_of_reminders, :reminder_period, :reminder_email, :created_at, :updated_at
json.url register_url(register, format: :json)
