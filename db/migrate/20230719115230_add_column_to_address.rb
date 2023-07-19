class AddColumnToAddress < ActiveRecord::Migration[7.0]
  def change
    add_reference :addresses, :user, index: true
  end
end
