# This migration comes from maawol_engine (originally 20180411133950)
class CreateCustomUserSubscriptionOptions < ActiveRecord::Migration[5.0]
  def change
    create_table :custom_user_subscription_options do |t|
      t.integer :user_id
      t.integer :subscription_option_id
    end
  end
end
