# This migration comes from maawol_engine (originally 20170613091804)
class EditLessonFields < ActiveRecord::Migration[5.0]
  def change
  	remove_column	:lessons, :video_1_url
  	remove_column	:lessons, :video_2_url
  end
end
