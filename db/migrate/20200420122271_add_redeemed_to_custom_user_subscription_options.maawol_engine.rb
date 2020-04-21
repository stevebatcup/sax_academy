# This migration comes from maawol_engine (originally 20180412093515)
class AddRedeemedToCustomUserSubscriptionOptions < ActiveRecord::Migration[5.0]
  def change
    add_column :custom_user_subscription_options, :redeemed, :boolean, default: false
  end
end
