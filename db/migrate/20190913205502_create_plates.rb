class CreatePlates < ActiveRecord::Migration[5.2]
  def change
    create_table :plates do |t|
      t.string :collection_name
      t.integer :number
      t.string :img

      t.timestamps
    end
  end
end
