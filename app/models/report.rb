class Report < ApplicationRecord
  belongs_to :audit
  validate :emp_check
  private def emp_check
    if !(Employee.find(vs_auditor_id))
      errors[:base] << " doesnt exist in the employees")
    end
  end
end
