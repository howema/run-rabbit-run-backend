class AddCompleteToExperiences < ActiveRecord::Migration[6.1]
  def change
    add_column :experiences, :complete, :boolean
  end
end
