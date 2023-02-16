class AddGymIdToGames < ActiveRecord::Migration[6.1]
  def change
    add_column :games, :gym_id, :integer
  end
end
