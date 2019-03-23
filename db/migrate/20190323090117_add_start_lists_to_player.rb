class AddStartListsToPlayer < ActiveRecord::Migration[5.0]
  def change
    add_column :players, :start_list_id, :integer
  end
end
