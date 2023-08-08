class CreateRepositories < ActiveRecord::Migration[7.0]
  def change
    create_table :repositories do |t|
      t.string :repo_url
      t.integer :public_repo
      t.references :user, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
