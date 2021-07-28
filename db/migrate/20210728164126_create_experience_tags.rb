class CreateExperienceTags < ActiveRecord::Migration[6.1]
  def change
    create_table :experience_tags do |t|
      t.integer :experience_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
