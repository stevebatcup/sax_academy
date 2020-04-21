# This migration comes from maawol_engine (originally 20200406184707)
class AddStatusAndTmpFieldsToVideos < ActiveRecord::Migration[6.0]
  def change
    add_column :videos, :status, :int
    add_column :videos, :tmp_video_file, :string
  end
end
