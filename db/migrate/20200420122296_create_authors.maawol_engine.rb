# This migration comes from maawol_engine (originally 20200218082733)
class CreateAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :authors do |t|
      t.string :name
      t.string :avatar

      t.timestamps
    end

    add_column	:lessons, :author_id, :integer, after: :name, default: 1
    add_column	:courses, :author_id, :integer, after: :name, default: 1
  end
end
