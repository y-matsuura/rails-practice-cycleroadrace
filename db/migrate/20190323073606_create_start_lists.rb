class CreateStartLists < ActiveRecord::Migration[5.0]
  def change
    create_table :start_lists do |t|
      t.integer :race_id
      t.integer :player_id

      t.timestamps
    end
  end
end
