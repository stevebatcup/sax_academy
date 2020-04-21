# This migration comes from maawol_engine (originally 20180209113941)
class RemoveUsers < ActiveRecord::Migration[5.0]
  def up
    drop_table :users
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
