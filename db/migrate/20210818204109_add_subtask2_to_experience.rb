class AddSubtask2ToExperience < ActiveRecord::Migration[6.1]
  def change
    add_column :experiences, :task1, :string
    add_column :experiences, :task2, :string
    add_column :experiences, :task3, :string
  end
end
