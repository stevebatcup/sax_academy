# This migration comes from maawol_engine (originally 20170817112106)
class AddCoverToAlbums < ActiveRecord::Migration[5.0]
  def change
    add_column :albums, :cover, :string
  end
end
