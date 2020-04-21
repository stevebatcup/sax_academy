# This migration comes from maawol_engine (originally 20171108133032)
class CreateFavourites < ActiveRecord::Migration[5.0]
  def change
    create_table :favourites do |t|
      t.integer :user_id
      t.integer :lesson_id

      t.timestamps
    end
  end
end
