class Audit < ApplicationRecord
    belongs_to :unit
    has_many :auditors
    has_many :employees , through: :auditors
end