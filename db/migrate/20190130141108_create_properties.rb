class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.references :agent

      t.integer :bedrooms
      t.integer :bathrooms 
      t.integer :distance_to_subway 
      t.string :borough 
      t.string :neighborhood
      t.boolean :pet_friendly 
      t.boolean :elevator 
      t.boolean :laundry 
      t.boolean :doorman 
      t.date :move_in_date 
      t.integer :rent 
      t.string :img_1
      t.string :img_2 
      t.string :img_3 

      t.timestamps
    end
  end
end
