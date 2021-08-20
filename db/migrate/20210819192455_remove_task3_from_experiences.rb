class RemoveTask3FromExperiences < ActiveRecord::Migration[6.1]
  def change
    remove_column :experiences, :task3, :string
  end
end
