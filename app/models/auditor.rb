class Auditor < ApplicationRecord
  belongs_to :audit
  belongs_to :employee
end
