class Audit < ApplicationRecord
    belongs_to :unit
    validates :unit_id, presence: true
end