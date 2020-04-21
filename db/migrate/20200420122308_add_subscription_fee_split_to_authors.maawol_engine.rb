# This migration comes from maawol_engine (originally 20200325125453)
class AddSubscriptionFeeSplitToAuthors < ActiveRecord::Migration[5.2]
  def change
    add_column :authors, :subscription_fee_split, :int, after: :referral_token
  end
end
