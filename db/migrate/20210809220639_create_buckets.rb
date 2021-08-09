class CreateBuckets < ActiveRecord::Migration[6.1]
  def change
    create_table :buckets do |t|
      t.string :title
      t.string :subtasks
      t.string :notes
      t.string :image
      t.integer :user_id

      t.timestamps
    end
  end
end
