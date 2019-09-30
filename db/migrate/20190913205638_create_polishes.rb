class CreatePolishes < ActiveRecord::Migration[5.2]
  def change
    create_table :polishes do |t|
      t.string :collection
      t.string :name

      t.string :img
      t.integer :img_x
      t.integer :img_y
      t.integer :img_width
      t.integer :img_height

      t.string :red
      t.string :blue
      t.string :green

      t.timestamps
    end
  end
end
