# This migration comes from maawol_engine (originally 20171219105056)
class AddImageToCourses < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :image, :string
  end
end
