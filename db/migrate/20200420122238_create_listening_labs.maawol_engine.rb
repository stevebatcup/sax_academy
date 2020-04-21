# This migration comes from maawol_engine (originally 20170817105550)
class CreateListeningLabs < ActiveRecord::Migration[5.0]
  def change
    create_table :listening_labs do |t|
      t.string :name
      t.string :spotify_url

      t.timestamps
    end
  end
end
