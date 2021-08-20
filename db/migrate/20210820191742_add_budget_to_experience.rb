class AddBudgetToExperience < ActiveRecord::Migration[6.1]
  def change
    add_column :experiences, :budget, :string
  end
end
