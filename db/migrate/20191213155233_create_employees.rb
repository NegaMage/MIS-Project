class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :employee_code
      t.boolean :flag
      t.string :designation
      t.string :email
      t.string :phone_number
      t.text :address
      t.text :qualification
      t.integer :experience

      t.timestamps
    end
  end
end
