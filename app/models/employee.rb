class Employee < ApplicationRecord
    has_many :auditors
    has_many :audits , through: :auditors
    has_many :paras
    validates :employee_code, :presence => true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
    validates :phone_number, length: {minimum: 10, maximum: 10}, allow_blank: false
end
