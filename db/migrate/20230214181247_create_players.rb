class CreatePlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.string :player_name
      t.string :player_email
      t.integer :player_phone_number
    end
  end
end
