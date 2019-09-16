class CreateNailPlates < ActiveRecord::Migration[5.2]
  def change
    create_table :nail_plates do |t|
      t.integer :nail_id
      t.integer :plate_id
      t.integer :design_num

      t.timestamps
    end
  end
end
