# This migration comes from maawol_engine (originally 20200213152729)
class AddIsForHomepageToVideos < ActiveRecord::Migration[5.2]
  def change
    add_column :videos, :is_for_homepage, :boolean, default: false, after: :url
  end
end
