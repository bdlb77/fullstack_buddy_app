class CreateFeatureTechnologies < ActiveRecord::Migration[6.0]
  def change
    create_table :feature_technologies do |t|
      t.references :technology, null: false, foreign_key: true
      t.references :feature, null: false, foreign_key: true

      t.timestamps
    end
  end
end
