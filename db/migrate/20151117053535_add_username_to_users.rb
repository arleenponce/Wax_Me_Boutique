class AddUsernameToUsers < ActiveRecord::Migration
  def change
    add_column :admins, :username, :string
  end
end
