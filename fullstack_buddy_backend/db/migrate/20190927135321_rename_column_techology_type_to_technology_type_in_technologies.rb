class RenameColumnTechologyTypeToTechnologyTypeInTechnologies < ActiveRecord::Migration[6.0]
  def change
    rename_column :technologies, :techology_type, :technology_type
  end
end
