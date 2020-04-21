# This migration comes from maawol_engine (originally 20200217095317)
class CreateContentManagementNavbars < ActiveRecord::Migration[5.2]
  def change
    create_table :cms_navbars do |t|
      t.string :slug

      t.timestamps
    end
  end
end
