class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.references :property
      t.references :renter

      t.timestamps
    end
  end
end
