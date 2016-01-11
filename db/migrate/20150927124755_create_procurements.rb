class CreateProcurements < ActiveRecord::Migration
  def change
    create_table :procurements do |t|
      t.string :name
      t.text :description
      t.integer :status
      t.float :price
      t.integer :organization_id, null: false, default: 0

      t.timestamps null: false
    end
  end
end