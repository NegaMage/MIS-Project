class CreateCirculars < ActiveRecord::Migration[6.0]
  def change
    create_table :circulars do |t|
      t.integer :circularid
      t.string :circulartype
      t.text :from
      t.text :keywords
      t.datetime :receiptdate
      t.datetime :broadcastdate

      t.timestamps
    end
  end
end
