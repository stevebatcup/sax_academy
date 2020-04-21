# This migration comes from maawol_engine (originally 20200217153636)
class CreateStuckQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :stuck_questions do |t|
      t.string :question
      t.integer :sort

      t.timestamps
    end
  end
end
