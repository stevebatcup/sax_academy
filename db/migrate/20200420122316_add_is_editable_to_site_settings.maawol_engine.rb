# This migration comes from maawol_engine (originally 20200414115718)
class AddIsEditableToSiteSettings < ActiveRecord::Migration[6.0]
  def change
    add_column :site_settings, :is_editable, :boolean, default: true
  end
end
