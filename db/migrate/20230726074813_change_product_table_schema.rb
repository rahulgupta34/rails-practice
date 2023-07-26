class ChangeProductTableSchema < ActiveRecord::Migration[7.0]
  def change
    change_table :products do |t|
      t.remove :desc, :string 
      
    end
  end
end
