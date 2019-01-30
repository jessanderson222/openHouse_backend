class CreateAgents < ActiveRecord::Migration[5.2]
  def change
    create_table :agents do |t|
      t.string :name
      t.string :email
      t.string :company 
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end