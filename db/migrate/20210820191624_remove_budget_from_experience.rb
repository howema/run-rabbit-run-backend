class RemoveBudgetFromExperience < ActiveRecord::Migration[6.1]
  def change
    remove_column :experiences, :budget, :string
  end
end
