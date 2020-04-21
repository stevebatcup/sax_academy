# This migration comes from maawol_engine (originally 20180405201044)
class AddNameToSubscriptionOptions < ActiveRecord::Migration[5.0]
  def change
    add_column :subscription_options, :name, :string
  end
end
