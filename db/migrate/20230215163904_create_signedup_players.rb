class CreateSignedupPlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :signedup_players do |t|
      t.belongs_to :game
      t.belongs_to :player
    end
  end
end
