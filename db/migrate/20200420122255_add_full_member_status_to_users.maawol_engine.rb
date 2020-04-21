# This migration comes from maawol_engine (originally 20180209135544)
class AddFullMemberStatusToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :status, :integer
  end
end
