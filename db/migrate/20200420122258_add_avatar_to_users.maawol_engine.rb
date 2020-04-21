# This migration comes from maawol_engine (originally 20180212153223)
class AddAvatarToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :avatar, :string
  end
end
