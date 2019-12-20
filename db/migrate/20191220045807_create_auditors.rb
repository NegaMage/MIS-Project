class CreateAuditors < ActiveRecord::Migration[6.0]
  def change
    create_table :auditors do |t|
      t.string :post
      t.string :string
      t.references :audit, null: false, foreign_key: true
      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
