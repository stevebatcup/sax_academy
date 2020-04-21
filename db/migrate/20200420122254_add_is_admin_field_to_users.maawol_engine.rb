# This migration comes from maawol_engine (originally 20180209133147)
class AddIsAdminFieldToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :is_admin, :boolean, default: false
  end
end
