class CreateExperiences < ActiveRecord::Migration[6.1]
  def change
    create_table :experiences do |t|
      t.string :title
      t.string :subtasks
      t.string :notes

      t.timestamps
    end
  end
end
