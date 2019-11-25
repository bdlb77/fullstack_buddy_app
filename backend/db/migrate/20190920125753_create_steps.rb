class CreateSteps < ActiveRecord::Migration[6.0]
  def change
    create_table :steps do |t|
      t.references :project, null: false, foreign_key: true
      t.references :feature, null: false, foreign_key: true
      t.integer :sequential_number

      t.timestamps
    end
  end
end
