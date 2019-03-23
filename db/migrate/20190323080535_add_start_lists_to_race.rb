class AddStartListsToRace < ActiveRecord::Migration[5.0]
  def change
    add_column :races, :start_list_id, :integer
  end
end
