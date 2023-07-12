class DropAuthors < ActiveRecord::Migration[7.0]
  def change
    def up
      drop_table :authors
    end
  
    def down
      fail ActiveRecord::IrreversibleMigration
    end
  end
end
