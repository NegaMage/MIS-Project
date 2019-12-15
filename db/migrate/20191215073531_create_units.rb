class CreateUnits < ActiveRecord::Migration[6.0]
  def change
    create_table :units do |t|
      t.string :oc
      t.string :ministry
      t.string :office_name
      t.text :office_acronym
      t.string :category
      t.string :audit_section
      t.text :utyp
      t.text :address
      t.string :phone
      t.string :email
      t.string :fax
      t.text :remarks

      t.timestamps
    end
  end
end
