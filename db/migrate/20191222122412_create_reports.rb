class CreateReports < ActiveRecord::Migration[6.0]
  def change
    create_table :reports do |t|
      t.references :audit, index: true, foreign_key: true
      t.string :report_code
      t.text :report_title
      t.datetime :creation_date
      t.datetime :dod_party
      t.datetime :dor_vetting
      t.datetime :dod_vetting
      t.datetime :dod_entity
<<<<<<< HEAD
      t.text :general_remakrs
      t.integer :vs_auditor_id
      t.integer :vs_aao_id
      t.integer :vs_srao_id
      t.integer :dd_id
      t.text :vs_auditor_remarks
      t.text :vs_aao_remarks
      t.text :vs_srao_remarks
      t.text :dd_remarks
      t.boolean :vetting_done_1
      t.boolean :vetting_done_2
      t.boolean :vetting_done_3
      t.boolean :vetting_done_dd
      t.datetime :vetting_1_time
      t.datetime :vetting_2_time
      t.datetime :vetting_3_time
      t.datetime :vetting_4_time
=======
      t.text :remakrs
>>>>>>> bb7b8065796ac938c2172bfd904f359548a51fcf
      t.boolean :freeze
      t.timestamps
    end
  end
end
