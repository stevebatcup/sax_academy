# This migration comes from maawol_engine (originally 20190620105210)
class AddReceivesWeeklyDigestToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :receives_weekly_digest, :boolean, default: true
  end
end
