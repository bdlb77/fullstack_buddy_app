class CreateTechnologies < ActiveRecord::Migration[6.0]
  def change
    create_table :technologies do |t|
      t.string :name
      t.string :image
      t.integer :techology_type

      t.timestamps
    end
  end
end
