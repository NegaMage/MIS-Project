class CreateRegisters < ActiveRecord::Migration[6.0]
  def change
    create_table :registers do |t|
      t.string :register_type
      t.datetime :deadline
      t.datetime :first_reminder
      t.integer :no_of_reminders
      t.integer :reminder_period
      t.string :reminder_email

      t.timestamps
    end
  end
end
