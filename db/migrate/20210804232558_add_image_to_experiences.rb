class AddImageToExperiences < ActiveRecord::Migration[6.1]
  def change
    add_column :experiences, :image, :string
  end
end
