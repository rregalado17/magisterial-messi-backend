class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :offensive
      t.integer :defensive

      t.timestamps
    end
  end
end
