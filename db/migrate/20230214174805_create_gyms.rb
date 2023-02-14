class CreateGyms < ActiveRecord::Migration[6.1]
  def change
    create_table :gyms do |t|
      t.string :gym_name
      t.text :address
      t.integer :gym_phone_number
      t.string :open_gym_hours
    end
  end
end
