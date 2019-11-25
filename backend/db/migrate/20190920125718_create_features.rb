class CreateFeatures < ActiveRecord::Migration[6.0]
  def change
    create_table :features do |t|
      t.integer :feature_type
      t.string :name
      t.integer :status

      t.timestamps
    end
  end
end
