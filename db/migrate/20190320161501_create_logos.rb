class CreateLogos < ActiveRecord::Migration[5.0]
  def change
    create_table :logos do |t|
      t.string :image_name

      t.timestamps
    end
  end
end
