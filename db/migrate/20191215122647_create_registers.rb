class CreateRegisters < ActiveRecord::Migration[6.0]
  def change
    create_table :registers do |t|
      t.integer :registerid
      t.string :registertype
      t.datetime :deadline
      t.datetime :firstreminder
      t.integer :numofreminders
      t.integer :reminderperiod
      t.string :reminderemail

      t.timestamps
    end
  end
end
