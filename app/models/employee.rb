class Employee < ApplicationRecord
    validates :employee_code, :presence => true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
    validates :phone_number, length: {minimum: 10, maximum: 10}, allow_blank: false
end
