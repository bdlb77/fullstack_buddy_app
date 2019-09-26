class RemoveNullConstraintFromProjectForeignKeyTemplate < ActiveRecord::Migration[6.0]
  def change
    change_column :projects, :template_id, :bigint, null: true
  end
end
