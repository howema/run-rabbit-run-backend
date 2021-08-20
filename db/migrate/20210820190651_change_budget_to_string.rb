class ChangeBudgetToString < ActiveRecord::Migration[6.1]
  def change
    change_column :experiences, :budget, :string
  end
end
