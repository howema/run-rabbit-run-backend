class RemoveTask1FromExperiences < ActiveRecord::Migration[6.1]
  def change
    remove_column :experiences, :task1, :string
  end
end
