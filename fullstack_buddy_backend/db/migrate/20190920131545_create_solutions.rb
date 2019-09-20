class CreateSolutions < ActiveRecord::Migration[6.0]
  def change
    create_table :solutions do |t|
      t.string :github_url
      t.references :template, null: false, foreign_key: { to_table: :projects }

      t.timestamps
    end
  end
end
