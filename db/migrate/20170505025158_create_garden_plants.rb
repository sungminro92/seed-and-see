class CreateGardenPlants < ActiveRecord::Migration[5.0]
  def change
    create_table :garden_plants do |t|

      t.timestamps
    end
  end
end
