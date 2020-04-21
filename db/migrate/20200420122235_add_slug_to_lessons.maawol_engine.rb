# This migration comes from maawol_engine (originally 20170815133902)
class AddSlugToLessons < ActiveRecord::Migration[5.0]
  def change
    add_column :lessons, :slug, :string
    add_index	:lessons, :slug
  end
end
