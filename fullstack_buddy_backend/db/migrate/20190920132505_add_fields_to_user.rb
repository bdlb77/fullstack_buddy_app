class AddFieldsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :github_handle, :string
    add_column :users, :dev_username, :string
    add_column :users, :twitter_handle, :string
    add_column :users, :instagram_handle, :string
    add_column :users, :facebook_username, :string
  end
end
