class RemoveColumnFromSkills < ActiveRecord::Migration[7.0]
  def change
    remove_column :skills, :rating, :string
  end
end
