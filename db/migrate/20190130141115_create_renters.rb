class CreateRenters < ActiveRecord::Migration[5.2]
  def change
    create_table :renters do |t|

      t.timestamps
    end
  end
end
