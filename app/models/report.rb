class Report < ApplicationRecord
  belongs_to :audit
  has_many :paras
end
