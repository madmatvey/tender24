class AddOrganizationIdToProcurement < ActiveRecord::Migration
  def change
  	add_column :procurements, :organization_id, :integer, :null => false
  	add_column :organizations, :user_id, :integer, :null => false
  	remove_column :organizations, :company_id, :integer
  end
end
