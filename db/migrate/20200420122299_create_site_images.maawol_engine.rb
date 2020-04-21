# This migration comes from maawol_engine (originally 20200219202321)
class CreateSiteImages < ActiveRecord::Migration[5.2]
  def change
    create_table :site_images do |t|
      t.string :name
      t.string :slug
      t.string :image

      t.timestamps
    end
  end
end
