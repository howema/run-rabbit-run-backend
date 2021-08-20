class RemoveTask2FromExperiences < ActiveRecord::Migration[6.1]
  def change
    remove_column :experiences, :task2, :string
  end
end
