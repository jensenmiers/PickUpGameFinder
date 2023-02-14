class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.datetime :game_start
      t.datetime :game_end
      t.integer :capacity
    end
  end
end
