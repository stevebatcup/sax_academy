# This migration comes from maawol_engine (originally 20200213130516)
class AddNameToContentBlocks < ActiveRecord::Migration[5.2]
  def change
    add_column :cms_content_blocks, :name, :string, after: :id
  end
end
