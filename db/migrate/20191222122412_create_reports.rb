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
      t.text :remakrs
      t.boolean :freeze
      t.timestamps
    end
  end
end
