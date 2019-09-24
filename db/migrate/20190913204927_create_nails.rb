class CreateNails < ActiveRecord::Migration[5.2]
  def change
    create_table :nails do |t|
      t.string :name
      t.integer :project_id
      t.string :texture
      t.binary :texture_blob
      t.timestamps
    end
  end
end
