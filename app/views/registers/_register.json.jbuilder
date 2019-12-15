json.extract! register, :id, :registerid, :registertype, :deadline, :firstreminder, :numofreminders, :reminderperiod, :reminderemail, :created_at, :updated_at
json.url register_url(register, format: :json)
