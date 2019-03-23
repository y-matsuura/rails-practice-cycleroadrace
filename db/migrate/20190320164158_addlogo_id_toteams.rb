class AddlogoIdToteams < ActiveRecord::Migration[5.0]
  def change
    add_column :teams, :logo_id, :Integer
  end
end
