class AddMuseumAdminIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :museum_admin_id, :integer
  end
end
