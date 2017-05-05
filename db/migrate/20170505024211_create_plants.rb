class CreatePlants < ActiveRecord::Migration[5.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.text :description
      t.string :color
      t.integer :days_to_water
      t.string :img_url

      t.timestamps
    end
  end
end
