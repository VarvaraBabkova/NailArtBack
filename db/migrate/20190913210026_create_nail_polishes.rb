class CreateNailPolishes < ActiveRecord::Migration[5.2]
  def change
    create_table :nail_polishes do |t|
      t.integer :nail_id
      t.integer :polish_id

      t.timestamps
    end
  end
end
