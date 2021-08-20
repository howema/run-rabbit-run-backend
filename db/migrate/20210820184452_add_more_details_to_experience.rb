class AddMoreDetailsToExperience < ActiveRecord::Migration[6.1]
  def change
    add_column :experiences, :travel_type, :string
    add_column :experiences, :task1a, :string
    add_column :experiences, :task1b, :string
    add_column :experiences, :task1c, :string
    add_column :experiences, :task2a, :string
    add_column :experiences, :task2b, :string
    add_column :experiences, :task2c, :string
    add_column :experiences, :task3a, :string
    add_column :experiences, :task3b, :string
    add_column :experiences, :task3c, :string
  end
end
