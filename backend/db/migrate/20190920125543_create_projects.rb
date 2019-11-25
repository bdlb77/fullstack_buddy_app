class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :description
      t.boolean :personal_completed
      t.string :personal_github_repo_url
      t.boolean :personal_sharable
      t.string :type, null: false
      t.references :template, null: false, foreign_key: { to_table: :projects }

      t.timestamps
    end
  end
end
