class AddIconToPlants < ActiveRecord::Migration[5.0]
  def change
    add_column :plants, :icon, :string
  end
end
