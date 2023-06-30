class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :name
      t.boolean :in_print
      t.boolean :out_of_print
      t.integer :year_published
      t.integer :price
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
