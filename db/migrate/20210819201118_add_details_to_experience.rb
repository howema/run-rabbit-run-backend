class AddDetailsToExperience < ActiveRecord::Migration[6.1]
  def change
    add_column :experiences, :timeline, :string
    add_column :experiences, :budget, :integer
  end
end
