class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :team_id

      t.timestamps
    end
  end
end
