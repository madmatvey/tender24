class CreateProcurements < ActiveRecord::Migration
  def change
    create_table :procurements do |t|
      t.string :name
      t.string :details

      t.timestamps null: false
    end
  end
end
