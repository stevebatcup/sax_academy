# This migration comes from maawol_engine (originally 20200324145428)
class AddReferralTokenToAuthors < ActiveRecord::Migration[5.2]
  def change
    add_column :authors, :referral_token, :string, after: :avatar
  end
end
