class CreateRenters < ActiveRecord::Migration[5.2]
  def change
    create_table :renters do |t|
      t.string :username 
      t.string :email 
      t.string :password_digest

      t.integer :bedrooms
      t.integer :bathrooms 
      t.float :distance_to_subway 
      t.string :borough 
      t.string :neighborhood
      t.boolean :pet_friendly 
      t.boolean :elevator 
      t.boolean :laundry 
      t.boolean :doorman 
      t.date :move_in_date 
      t.integer :rent_min 
      t.integer :rent_max 

      t.timestamps
    end
  end
end
