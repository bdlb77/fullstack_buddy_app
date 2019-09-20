class CreateUserResources < ActiveRecord::Migration[6.0]
  def change
    create_table :user_resources do |t|
      t.references :user, null: false, foreign_key: true
      t.references :resource, null: false, foreign_key: true

      t.timestamps
    end
  end
end
