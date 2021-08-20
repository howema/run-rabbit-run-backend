class AddTask3ToExperiences < ActiveRecord::Migration[6.1]
  def change
    add_column :experiences, :task3, :string
  end
end
