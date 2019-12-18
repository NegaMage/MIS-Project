class AddThingsToUnits < ActiveRecord::Migration[6.0]
  def change
    add_column :units, :pfms_implemented ,:boolean
    add_column :units, :generates_misreports ,:boolean
    add_column :units, :mis_report_frequency ,:string
  end
end
