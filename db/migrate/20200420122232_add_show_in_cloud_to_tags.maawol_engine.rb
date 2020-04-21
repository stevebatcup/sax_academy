# This migration comes from maawol_engine (originally 20170628122115)
class AddShowInCloudToTags < ActiveRecord::Migration[5.0]
  def change
    add_column :tags, :show_in_cloud, :boolean
  end
end
