class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :desc
      t.string :price

      t.timestamps
    end
  end
end
