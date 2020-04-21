# This migration comes from maawol_engine (originally 20171220113615)
class RemoveCommentsLessons < ActiveRecord::Migration[5.0]
  def change
  	drop_table	:comments_lessons
  end
end
