class CreatePictures < ActiveRecord::Migration[7.0]
  def change
    create_table :pictures do |t|
      t.string :name
      t.integer :image_id, null: false
      t.string :image_type, null: false

      t.timestamps
    end
  end
end
