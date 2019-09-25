class RenameJointTablesUserProjectsAndUserResources < ActiveRecord::Migration[6.0]
  def change
    rename_table :user_projects, :project_users
    rename_table :user_resources, :resource_users
  end
end
