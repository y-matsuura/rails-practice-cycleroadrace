class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :category
      t.integer :uniform
      t.integer :logo

      t.timestamps
    end
  end
end
