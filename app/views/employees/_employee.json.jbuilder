json.extract! employee, :id, :employee_code, :flag, :designation, :email, :phone_number, :address, :qualification, :experience, :created_at, :updated_at
json.url employee_url(employee, format: :json)
