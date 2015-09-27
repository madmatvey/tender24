class CreateProcurements < ActiveRecord::Migration
  def change
    create_table :procurements do |t|
      t.string :name
      t.text :description
      t.integer :status
      t.float :price
      t.integer :company_id

      t.timestamps null: false
    end
  end
end
