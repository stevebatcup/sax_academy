# This migration comes from maawol_engine (originally 20170613125714)
class AddThumbnailToVideos < ActiveRecord::Migration[5.0]
  def change
    add_column :videos, :thumbnail, :string
  end
end
