# This migration comes from maawol_engine (originally 20180411132544)
class AddIsCustomToSubscriptionOptions < ActiveRecord::Migration[5.0]
  def change
    add_column :subscription_options, :custom, :boolean, default: false
  end
end
