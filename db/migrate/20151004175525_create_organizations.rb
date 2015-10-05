class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :logo
      t.integer :details_id

      t.timestamps null: false
    end
  end
end
