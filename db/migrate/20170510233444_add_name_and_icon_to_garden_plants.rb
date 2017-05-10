class AddNameAndIconToGardenPlants < ActiveRecord::Migration[5.0]
  def change
    add_column :garden_plants, :name, :string
    add_column :garden_plants, :icon, :string
  end
end
