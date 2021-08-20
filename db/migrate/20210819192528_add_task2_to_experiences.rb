class AddTask2ToExperiences < ActiveRecord::Migration[6.1]
  def change
    add_column :experiences, :task2, :string
  end
end
