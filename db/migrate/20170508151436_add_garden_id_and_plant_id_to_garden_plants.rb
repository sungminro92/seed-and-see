class AddGardenIdAndPlantIdToGardenPlants < ActiveRecord::Migration[5.0]
  def change
    add_column :garden_plants, :plant_id, :integer
    add_column :garden_plants, :garden_id, :integer
  end
end
