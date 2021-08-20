class AddTask1ToExperiences < ActiveRecord::Migration[6.1]
  def change
    add_column :experiences, :task1, :string
  end
end
