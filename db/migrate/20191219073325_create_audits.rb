class CreateAudits < ActiveRecord::Migration[6.0]
  def change
    create_table :audits do |t|
      t.belongs_to :units
      t.datetime :startdate
      t.datetime :enddate
      t.integer :duration
      t.string :poa
      t.integer :totalexpenditure
      t.integer :salarayexpenditure
      t.float :saltotalratio
      t.integer :capitalcomponent
      t.integer :revenuecomponent
      t.integer :sanctionedexpenditure
      t.integer :actualspent
      t.float :actualsanctionedratio
      t.integer :excessexpenditure
      t.integer :savings
      t.float :excesssavingsratio
      t.integer :staffsanctioned
      t.integer :staffvacancy
      t.float :vacancypercent
      t.text :remarks
      t.boolean :constructionworksongoing
    end
  end
end
