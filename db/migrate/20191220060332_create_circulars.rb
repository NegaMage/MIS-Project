class CreateCirculars < ActiveRecord::Migration[6.0]
  def change
    create_table :circulars do |t|
      t.string :circular_type
      t.text :from
      t.text :keywords
      t.datetime :receipt_date
      t.datetime :broadcast_date

      t.timestamps
    end
  end
end
