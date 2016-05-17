class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :organization_id, :integer
    remove_column :organizations, :user_id
  end
end
