class AddColumnToBook < ActiveRecord::Migration[7.0]
  def change
    add_reference :books, :supplier
  end
end
