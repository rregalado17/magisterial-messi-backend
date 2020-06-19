class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.string :last_name
      t.integer :offense
      t.integer :defense
      t.integer :stamina
      t.integer :age
      t.boolean :injured
      t.references :team, null: false, foreign_key: true

      t.timestamps
    end
  end
end
