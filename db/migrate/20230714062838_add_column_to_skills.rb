class AddColumnToSkills < ActiveRecord::Migration[7.0]
  def change
    add_column :skills, :type, :string
  end
end
