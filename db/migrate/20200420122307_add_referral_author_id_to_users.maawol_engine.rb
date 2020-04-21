# This migration comes from maawol_engine (originally 20200325120519)
class AddReferralAuthorIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :referral_author_id, :int
  end
end
