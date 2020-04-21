# This migration comes from maawol_engine (originally 20200401112040)
class LinkAuthorToUser < ActiveRecord::Migration[6.0]
  def change
  	add_column	:users, :author_id, :integer
  end
end
