class CreateParas < ActiveRecord::Migration[6.0]
  def change
    create_table :paras do |t|
      t.text :para_title
      t.integer :para_type
      t.integer :para_number
      t.text :contents
      t.datetime :last_saved
      t.string :draft_status
      t.string :vs_auditor_status
      t.string :vs_aao_status
      t.string :vs_srao_status
      t.datetime :vs_auditor_time
      t.datetime :vs_aao_time
      t.datetime :vs_srao_time
      t.datetime :dd_time
      t.string :outstanding_status
      t.datetime :outstanding_status_time
      t.text :general_remarks
      t.text :vs_auditor_remarks
      t.text :vs_aao_remarks
      t.text :vs_srao_remarks
      t.text :dd_remarks
    end
  end
end
