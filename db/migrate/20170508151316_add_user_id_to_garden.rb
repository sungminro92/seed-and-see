class AddUserIdToGarden < ActiveRecord::Migration[5.0]
  def change
    add_column :gardens, :user_id, :integer
  end
end
